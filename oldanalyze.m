% analyze.m - Script to process Serpent output files from MSR simulation
% This script processes detector data from Rooms 1, 2, and 3

clear;
clc;
close all;

fprintf('Starting analysis of MSR simulation data...\n');

% Define the base filename (without extension)
baseFilename = 'nattyCore3roomv5';

try
    % Load the detector data
    detFile = [baseFilename '_det0.m'];
    fprintf('Reading detector file: %s\n', detFile);
    
    if ~exist(detFile, 'file')
        error('Detector file not found: %s', detFile);
    end
    
    % Run the file to load all detector variables
    run(detFile);
    
    % List all variables to help debug
    allVars = whos;
    fprintf('Available variables:\n');
    for i = 1:length(allVars)
        if strncmp(allVars(i).name, 'DET', 3)
            fprintf('  %s\n', allVars(i).name);
        end
    end
    
    % Extract detector data
    fprintf('\nExtracting detector data...\n');
    
    % Room detectors
    try
        room1_flux = DETRoom1Det(1);
        room2_flux = DETRoom2Det(1);
        room3_flux = DETRoom3Det(1);
        
        fprintf('Room 1 flux: %.4e n/cm²/s\n', room1_flux);
        fprintf('Room 2 flux: %.4e n/cm²/s\n', room2_flux);
        fprintf('Room 3 flux: %.4e n/cm²/s\n', room3_flux);
    catch err
        fprintf('Unable to extract room detector data. Error: %s\n', err.message);
        fprintf('Trying alternative detector variable names...\n');
        
        % Sometimes Serpent uses different naming conventions
        detNames = who('DET*');
        
        % Print all detector names to help with debugging
        for i = 1:length(detNames)
            fprintf('Found detector: %s\n', detNames{i});
        end
        
        % Try to guess detector variables based on partial name matches
        room1_idx = find(contains(detNames, 'Room1'));
        room2_idx = find(contains(detNames, 'Room2'));
        room3_idx = find(contains(detNames, 'Room3'));
        
        if ~isempty(room1_idx) && ~isempty(room2_idx) && ~isempty(room3_idx)
            room1_var = detNames{room1_idx(1)};
            room2_var = detNames{room2_idx(1)};
            room3_var = detNames{room3_idx(1)};
            
            room1_flux = eval([room1_var '(1)']);
            room2_flux = eval([room2_var '(1)']);
            room3_flux = eval([room3_var '(1)']);
            
            fprintf('Room 1 flux: %.4e n/cm²/s\n', room1_flux);
            fprintf('Room 2 flux: %.4e n/cm²/s\n', room2_flux);
            fprintf('Room 3 flux: %.4e n/cm²/s\n', room3_flux);
        else
            error('Could not find room detector variables');
        end
    end
    
    % Calculate attenuation between rooms
    fprintf('\nCalculating attenuation between rooms...\n');
    
    attenuation_r1_r2 = room1_flux / room2_flux;
    attenuation_r2_r3 = room2_flux / room3_flux;
    attenuation_r1_r3 = room1_flux / room3_flux;
    
    fprintf('Room 1 → Room 2: Attenuation factor = %.2e\n', attenuation_r1_r2);
    fprintf('Room 2 → Room 3: Attenuation factor = %.2e\n', attenuation_r2_r3);
    fprintf('Room 1 → Room 3: Attenuation factor = %.2e\n', attenuation_r1_r3);
    
    % Analyze flux spectrum if available
    fprintf('\nAnalyzing flux spectrum...\n');
    try
        % Find flux detector
        flux_idx = find(contains(detNames, 'FluxDet'));
        if ~isempty(flux_idx)
            flux_var = detNames{flux_idx(1)};
            flux_mean_var = [flux_var '_MEAN'];
            flux_err_var = [flux_var '_ERR'];
            
            % Get energy bins
            energy_bins = DET_E(1:eval([flux_var '(1)']));
            
            % Get flux spectrum
            flux_spectrum = eval([flux_mean_var '(1:' flux_var '(1))']);
            flux_errors = eval([flux_err_var '(1:' flux_var '(1))']);
            
            % Plot energy spectrum
            figure(1);
            semilogx(energy_bins, flux_spectrum, 'r-', 'LineWidth', 2);
            grid on;
            title('Neutron Energy Spectrum in Reactor Core');
            xlabel('Energy (MeV)');
            ylabel('Flux per unit energy (n/cm²/s/MeV)');
            xlim([min(energy_bins) max(energy_bins)]);
            saveas(gcf, 'core_spectrum.png');
            fprintf('Created flux spectrum plot\n');
            
            % Calculate thermal, epithermal, and fast flux components
            thermal_idx = energy_bins <= 0.625e-6;
            epithermal_idx = energy_bins > 0.625e-6 & energy_bins <= 0.1;
            fast_idx = energy_bins > 0.1;
            
            % Calculate bin widths
            bin_widths = zeros(size(energy_bins));
            bin_widths(1) = energy_bins(1);
            for i = 2:length(energy_bins)
                bin_widths(i) = energy_bins(i) - energy_bins(i-1);
            end
            
            % Integrate flux in each energy range
            thermal_flux = sum(flux_spectrum(thermal_idx) .* bin_widths(thermal_idx));
            epithermal_flux = sum(flux_spectrum(epithermal_idx) .* bin_widths(epithermal_idx));
            fast_flux = sum(flux_spectrum(fast_idx) .* bin_widths(fast_idx));
            total_flux = thermal_flux + epithermal_flux + fast_flux;
            
            fprintf('Core flux components:\n');
            fprintf('Thermal (<0.625 eV): %.4e n/cm²/s (%.2f%%)\n', thermal_flux, 100*thermal_flux/total_flux);
            fprintf('Epithermal (0.625 eV - 0.1 MeV): %.4e n/cm²/s (%.2f%%)\n', epithermal_flux, 100*epithermal_flux/total_flux);
            fprintf('Fast (>0.1 MeV): %.4e n/cm²/s (%.2f%%)\n', fast_flux, 100*fast_flux/total_flux);
        else
            fprintf('Could not find flux detector variables\n');
        end
    catch err
        fprintf('Unable to analyze flux spectrum. Error: %s\n', err.message);
    end
    
    % Compare flux in each room
    fprintf('\nComparing flux levels across rooms...\n');
    try
        figure(2);
        room_data = [room1_flux, room2_flux, room3_flux];
        room_labels = {'Room 1 (Reactor)', 'Room 2 (Heat Exchange)', 'Room 3 (Auxiliary)'};
        
        bar(room_data);
        set(gca, 'YScale', 'log');
        title('Neutron Flux by Room');
        xlabel('Room');
        xticklabels(room_labels);
        ylabel('Neutron Flux (n/cm²/s)');
        grid on;
        saveas(gcf, 'room_flux_comparison.png');
        fprintf('Created room flux comparison plot\n');
    catch err
        fprintf('Error creating room flux comparison plot: %s\n', err.message);
    end
    
    fprintf('\nAnalysis complete.\n');
catch err
    fprintf('Error in analysis: %s\n', err.message);
    disp(err.stack);
end
