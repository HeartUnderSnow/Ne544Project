% MSR Reactor Simulation Analysis Script
% Created to analyze Serpent2 simulation results
% Date: April 30, 2025

% Clear workspace and close all figures
clear all;
close all;
clc;

fprintf('Starting analysis of MSR reactor simulation results...\n');

% Define normalization parameters
% These will be used to convert to absolute flux (neutrons/cm²/s)
% Default source strength for MSR (adjust based on your reactor power)
sourceStrength = 1.0e17; % neutrons/second - adjust for your reactor power


% Load detector data
try
    run('nattyCore_det0.m');
    fprintf('Successfully loaded detector data\n');
catch
    error('Could not load detector data file (nattyCore_det0.m)');
end

% Load general results
try
    run('nattyCore_res.m');
    fprintf('Successfully loaded general results\n');
catch
    error('Could not load general results file (nattyCore_res.m)');
end

% Check for TOT_SRCRATE variable and handle it
if ~exist('TOT_SRCRATE', 'var')
    % If TOT_SRCRATE doesn't exist, create it from other variables or use a default
    fprintf('Warning: TOT_SRCRATE variable not found in result files.\n');
    fprintf('Using simulation population as normalization factor.\n');
    
    % Use population size as a fallback normalization
    if exist('POP', 'var')
        TOT_SRCRATE = POP;
    else
        TOT_SRCRATE = 1.0; % Default fallback
        fprintf('Warning: Using default normalization factor of 1.0\n');
    end
end

% Ensure TOT_SRCRATE is a scalar
if numel(TOT_SRCRATE) > 1
    fprintf('Warning: TOT_SRCRATE is not a scalar. Using the first element.\n');
    TOT_SRCRATE = TOT_SRCRATE(1);
end

% Print basic simulation info
fprintf('\n==== Simulation Information ====\n');
fprintf('Title: %s\n', TITLE);
fprintf('Version: %s\n', VERSION);
fprintf('Compilation date: %s\n', COMPILE_DATE);
fprintf('Run start date: %s\n', START_DATE);
fprintf('Run completion date: %s\n', COMPLETE_DATE);
fprintf('Population per cycle: %d\n', POP);
fprintf('Number of batches: %d\n', BATCHES);
fprintf('CPU time: %.2f hours\n', TOT_CPU_TIME/3600);
fprintf('Running time: %.2f hours\n', RUNNING_TIME/3600);

% Print key neutronics results
fprintf('\n==== Key Results ====\n');
fprintf('Criticality (k-eff): %.5f ± %.5f\n', ANA_KEFF(1), ANA_KEFF(2));
fprintf('Neutron generation time: %.2e s\n', ADJ_NAUCHI_GEN_TIME(1));
fprintf('Average neutron lethargy: %.4f\n', ANA_ALF(1));
fprintf('Mean neutron energy: %.4e MeV\n', ANA_EALF(1));

% Check if room detectors recorded anything
fprintf('\n==== Detector Status ====\n');

if sum(DETRoom1Det(:,11)) == 0
    fprintf('Room1Det: No data recorded\n');
else
    fprintf('Room1Det: Data available\n');
end

if sum(DETRoom2Det(:,11)) == 0
    fprintf('Room2Det: No data recorded\n');
else
    fprintf('Room2Det: Data available\n');
end

if sum(DETRoom3Det(:,11)) == 0
    fprintf('Room3Det: No data recorded\n');
else
    fprintf('Room3Det: Data available\n');
end

if exist('DETFluxDet', 'var')
    fprintf('FluxDet: Data available - %d energy bins\n', size(DETFluxDet,1));
else
    fprintf('FluxDet: No data recorded\n');
end

% Create figure for flux spectrum
figure('Position', [100, 100, 1000, 800]);

% Extract energy bins and flux values
if exist('DETFluxDetE', 'var') && exist('DETFluxDet', 'var')
    energy_bins = DETFluxDetE(:,3); % Mean energy of each bin
    raw_flux_values = DETFluxDet(:,11); % Raw flux values from Serpent
    rel_errors = DETFluxDet(:,12); % Relative errors
    
    % Calculate energy bin widths (for flux per unit energy)
    energy_lower = DETFluxDetE(:,1);
    energy_upper = DETFluxDetE(:,2);
    energy_widths = energy_upper - energy_lower;
    
    % Calculate normalization factor from Serpent results
    % This converts the statistical weight to absolute flux
    if exist('TOT_SRCRATE', 'var') && TOT_SRCRATE ~= 0
        norm_factor = sourceStrength / TOT_SRCRATE;
    else
        % Fallback if TOT_SRCRATE is zero or doesn't exist
        fprintf('Warning: Using alternative normalization method.\n');
        if exist('SRC_MULT', 'var') && SRC_MULT(1) ~= 0
            norm_factor = sourceStrength / SRC_MULT(1);
        else
            % If all else fails, use a default normalization
            norm_factor = sourceStrength;
            fprintf('Warning: Using direct source strength as normalization factor.\n');
        end
    end
    
    % Convert to flux per unit energy (neutrons/cm²/s/MeV)
    % Dividing by energy bin width gives flux per unit energy
    flux_per_energy = raw_flux_values .* norm_factor ./ energy_widths;
    
    % For total flux in each bin (neutrons/cm²/s)
    flux_values = raw_flux_values .* norm_factor;
    
    % Calculate absolute errors
    flux_errors = rel_errors .* flux_values;
    flux_per_energy_errors = rel_errors .* flux_per_energy;
    
    % Plot flux spectrum (log-log scale)
    subplot(2,2,1);
    loglog(energy_bins, flux_per_energy, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 4);
    hold on;
    loglog(energy_bins, flux_per_energy + flux_per_energy_errors, 'r--', 'LineWidth', 0.5);
    loglog(energy_bins, flux_per_energy - flux_per_energy_errors, 'r--', 'LineWidth', 0.5);
    grid on;
    xlabel('Energy (MeV)');
    ylabel('Neutron Flux (n/cm²/s)');
    title('Neutron Energy Spectrum (log-log)');
    
    % Plot flux spectrum (linear-log scale)
    subplot(2,2,2);
    semilogx(energy_bins, flux_per_energy, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 4);
    hold on;
    semilogx(energy_bins, flux_per_energy + flux_per_energy_errors, 'r--', 'LineWidth', 0.5);
    semilogx(energy_bins, flux_per_energy - flux_per_energy_errors, 'r--', 'LineWidth', 0.5);
    grid on;
    xlabel('Energy (MeV)');
    ylabel('Neutron Flux (n/cm²/s)');
    title('Neutron Energy Spectrum (linear-log)');
    
    % Plot relative errors
    subplot(2,2,3);
    semilogx(energy_bins, rel_errors * 100, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 4);
    grid on;
    xlabel('Energy (MeV)');
    ylabel('Relative Error (%)');
    title('Relative Errors in Flux Measurements');
    
    % Calculate integral quantities (in neutrons/cm²/s)
    thermal_flux = sum(flux_values(energy_bins < 0.625));
    epithermal_flux = sum(flux_values(energy_bins >= 0.625 & energy_bins < 1.0));
    fast_flux = sum(flux_values(energy_bins >= 1.0));
    total_flux = sum(flux_values);
    
    % Calculate thermal utilization and other parameters
    thermal_fraction = thermal_flux / total_flux;
    epithermal_fraction = epithermal_flux / total_flux;
    fast_fraction = fast_flux / total_flux;
    
    % Print integral flux parameters
    fprintf('\n==== Integral Flux Parameters ====\n');
    fprintf('Total flux: %.4e neutrons/cm²/s\n', total_flux);
    fprintf('Thermal flux (<0.625 MeV): %.4e neutrons/cm²/s (%.2f%%)\n', thermal_flux, thermal_fraction*100);
    fprintf('Epithermal flux (0.625-1.0 MeV): %.4e neutrons/cm²/s (%.2f%%)\n', epithermal_flux, epithermal_fraction*100);
    fprintf('Fast flux (>1.0 MeV): %.4e neutrons/cm²/s (%.2f%%)\n', fast_flux, fast_fraction*100);
    
    % Print average flux in different energy regions
    fprintf('\n==== Average Flux by Energy Region ====\n');
    thermal_bins = sum(energy_bins < 0.625);
    epithermal_bins = sum(energy_bins >= 0.625 & energy_bins < 1.0);
    fast_bins = sum(energy_bins >= 1.0);
    
    if thermal_bins > 0
        fprintf('Average thermal flux: %.4e neutrons/cm²/s per bin\n', thermal_flux/thermal_bins);
    end
    if epithermal_bins > 0
        fprintf('Average epithermal flux: %.4e neutrons/cm²/s per bin\n', epithermal_flux/epithermal_bins);
    end
    if fast_bins > 0
        fprintf('Average fast flux: %.4e neutrons/cm²/s per bin\n', fast_flux/fast_bins);
    end
    
    % Create a pie chart showing flux distribution
    subplot(2,2,4);
    pie([thermal_fraction, epithermal_fraction, fast_fraction], ...
        {sprintf('Thermal (%.1f%%)', thermal_fraction*100), ...
         sprintf('Epithermal (%.1f%%)', epithermal_fraction*100), ...
         sprintf('Fast (%.1f%%)', fast_fraction*100)});
    title('Neutron Energy Distribution');
    colormap(jet);
end

% Save the figure
saveas(gcf, 'flux_spectrum_analysis.png');
fprintf('\nAnalysis complete. Figure saved as "flux_spectrum_analysis.png"\n');

% Additional statistical analysis if needed
if exist('INF_FLX', 'var')
    figure('Position', [100, 100, 800, 600]);
    
    % Plot group constants if available
    if exist('INF_NSF', 'var') && exist('INF_FISS', 'var')
        subplot(2,1,1);
        plot(INF_NSF(:,1), 'b-o', 'LineWidth', 1.5, 'MarkerSize', 4, 'DisplayName', 'Nu-Sigma-Fission');
        hold on;
        plot(INF_FISS(:,1), 'r-s', 'LineWidth', 1.5, 'MarkerSize', 4, 'DisplayName', 'Sigma-Fission');
        grid on;
        legend('show');
        title('Fission Cross Sections');
        
        subplot(2,1,2);
        if exist('INF_KAPPA', 'var')
            plot(INF_KAPPA(:,1), 'g-^', 'LineWidth', 1.5, 'MarkerSize', 4);
            grid on;
            title('Energy per Fission (KAPPA)');
        end
    end
    
    % Save the figure
    saveas(gcf, 'additional_analysis.png');
    fprintf('Additional analysis figure saved as "additional_analysis.png"\n');
end

% Create a figure to compare with typical MSR flux spectrum
figure('Position', [100, 100, 1000, 600]);
subplot(1,2,1);
loglog(energy_bins, flux_per_energy, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 4);
grid on;
xlabel('Energy (MeV)');
ylabel('Neutron Flux (n/cm²/s)');
title('Simulated Neutron Spectrum');

% Energy grid for lethargy plot
subplot(1,2,2);
semilogx(energy_bins, flux_per_energy .* energy_bins, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 4);
grid on;
xlabel('Energy (MeV)');
ylabel('E×Φ(E) (n/cm²/s)');
title('Flux per Unit Lethargy');
saveas(gcf, 'flux_lethargy_analysis.png');

% Export data to CSV for further analysis
flux_data = [energy_lower, energy_upper, energy_bins, flux_values, flux_errors, flux_per_energy, flux_per_energy_errors];
flux_headers = {'Energy_Lower(MeV)', 'Energy_Upper(MeV)', 'Energy_Mean(MeV)', ...
               'Flux(n/cm²/s)', 'Flux_Error(n/cm²/s)', ...
               'Flux_per_Energy(n/cm²/s/MeV)', 'Flux_per_Energy_Error(n/cm²/s/MeV)'};

flux_table = array2table(flux_data, 'VariableNames', flux_headers);
writetable(flux_table, 'flux_spectrum_data.csv');
fprintf('Flux spectrum data exported to "flux_spectrum_data.csv"\n');

fprintf('\nAnalysis completed successfully.\n');
fprintf('\nNOTE: The absolute flux values depend on the source strength\n');
fprintf('      which was set to %.2e neutrons/s in this analysis.\n', sourceStrength);
fprintf('      Adjust the sourceStrength variable at the beginning of the script\n');
fprintf('      to match your reactor power for accurate absolute flux values.\n');
