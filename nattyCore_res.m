
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Mar 20 2025 11:47:38' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  12]) = 'natMaterials' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:  46]) = '/home/galriel/serpent2/2ne544project/nattyCore' ;
WORKING_DIRECTORY         (idx, [1:  22]) = '/home/galriel/serpent2' ;
HOSTNAME                  (idx, [1:   9]) = 'archlinux' ;
CPU_TYPE                  (idx, [1:  46]) = '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 184.0 ;
START_DATE                (idx, [1:  24]) = 'Wed Apr 30 10:55:40 2025' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Wed Apr 30 12:38:28 2025' ;

% Run parameters:

POP                       (idx, 1)        = 5000 ;
BATCHES                   (idx, 1)        = 200 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1746032140771 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 1 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
SHARE_BUF_ARRAY           (idx, 1)        = 1 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  20]) = 'Serpent2xsdata/xsdir' ;
DECAY_DATA_FILE_PATH      (idx, [1:  30]) = 'Serpent2xsdata/sss_jeff311.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  30]) = 'Serpent2xsdata/sss_jeff311.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MEAN_SRC_WGT              (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
SOURCE_SAMPLING_EFF       (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.28440E-02 0.00165  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.77156E-01 3.9E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  3.24053E-01 8.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  3.24199E-01 9.4E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  7.50904E+00 0.00152  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.64185E-01 2.4E-06  3.53893E-02 6.6E-05  4.25504E-04 0.00072  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  7.70431E+03 0.01427  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  7.70408E+03 0.01427  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.60589E+04 0.01423  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  9.41035E+01 0.01431  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 50 ;
SIMULATED_HISTORIES       (idx, 1)        = 5000 ;
SIMULATION_COMPLETED      (idx, 1)        = 0 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.02240E+02 ;
RUNNING_TIME              (idx, 1)        =  1.02797E+02 ;
INIT_TIME                 (idx, [1:   2]) = [  1.60067E-01  1.60067E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  2.38334E-03  2.38334E-03 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  1.02635E+02  0.00000E+00  0.00000E+00 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  4.40304E+02  0.00000E+00 ] ;
CPU_USAGE                 (idx, 1)        = 0.99459 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.94607E-01 0.00023 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.98633E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 31876.69 ;
ALLOC_MEMSIZE             (idx, 1)        = 2352.80 ;
MEMSIZE                   (idx, 1)        = 2296.84 ;
XS_MEMSIZE                (idx, 1)        = 2171.95 ;
MAT_MEMSIZE               (idx, 1)        = 122.57 ;
RES_MEMSIZE               (idx, 1)        = 0.85 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 1.47 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 55.97 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 18 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 729809 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 18 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 52 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 52 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 1339 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 0 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.34728E-06 0.03982  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  3.12391E-01 0.00096 ];
U235_FISS                 (idx, [1:   4]) = [  4.05129E-01 0.00049  9.98016E-01 3.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  8.05402E-04 0.01645  1.98403E-03 0.01642 ];
U235_CAPT                 (idx, [1:   4]) = [  1.31399E-01 0.00142  2.22109E-01 0.00129 ];
U238_CAPT                 (idx, [1:   4]) = [  1.67608E-01 0.00096  2.83314E-01 0.00078 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 250000 2.50000E+05 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 19527361 4.16592E+07 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 4.43591E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 19777361 4.23528E+07 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 11657202 2.50318E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 8062736 1.71948E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 57423 1.26154E+05 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 19777361 4.23528E+07 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 0.00000E+00 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.31550E-11 0.00043 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.83048E-01 0.00043 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.05911E-01 0.00043 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.91092E-01 0.00029 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.97003E-01 2.1E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  6.73638E-03 0.03982 ];
TOT_FLUX                  (idx, [1:   2]) = [  3.45830E+02 0.00139 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.99723E-03 0.00709 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  9.74273E+01 0.00028 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.67354E+00 0.00048 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.88864E-01 0.00024 ];
SIX_FF_P                  (idx, [1:   2]) = [  1.45271E+02 0.18004 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.71687E+00 0.00053 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.48728E-01 0.00411 ];
SIX_FF_LT                 (idx, [1:   2]) = [  5.14372E-01 0.07866 ];
SIX_FF_KINF               (idx, [1:   2]) = [  3.56268E+02 0.18238 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.45048E+02 0.04964 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.42183E+00 5.8E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02279E+02 3.8E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  9.93195E-01 0.00027  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.93498E-01 0.00043 ];
COL_KEFF                  (idx, [1:   2]) = [  9.93198E-01 0.00027 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.93498E-01 0.00043 ];
ABS_KINF                  (idx, [1:   2]) = [  9.96517E-01 0.00042 ];
ANA_EXT_K                 (idx, [1:  20]) = [  1.21910E+00 0.00183  1.14449E+00 0.00223  1.07083E+00 0.00193  1.03502E+00 0.00179  1.01475E+00 0.00230  1.00707E+00 0.00202  9.93133E-01 0.00238  9.92470E-01 0.00205  9.93635E-01 0.00221  9.86932E-01 0.00228 ];
SRC_MULT                  (idx, [1:   2]) = [  1.67637E+02 0.07944 ];
MEAN_NGEN                 (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PROMPT_CHAIN_LENGTH       (idx, [1:   2]) = [  1.02884E+01 0.00506 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.63864E+01 0.00015 ];
IMP_ALF                   (idx, [1:   2]) = [  1.63855E+01 8.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  1.52963E-06 0.00248 ];
IMP_EALF                  (idx, [1:   2]) = [  1.53076E-06 0.00138 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.51476E-02 0.01208 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.52301E-02 0.00094 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  9.60961E-05 0.00096  9.60961E-05 0.00096  0.00000E+00 0.0E+00 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  9.60961E-05 0.00096  9.60961E-05 0.00096  0.00000E+00 0.0E+00 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  9.64134E-05 0.00264  9.64134E-05 0.00264  0.00000E+00 0.0E+00 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  9.64134E-05 0.00264  9.64134E-05 0.00264  0.00000E+00 0.0E+00 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  8.52211E-04 0.06151 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  8.52211E-04 0.06151 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.88593E-07 0.00359 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.82350E-05 0.00057  3.82350E-05 0.00057  0.00000E+00 0.0E+00 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  4.65305E-04 0.00520  4.65305E-04 0.00520  0.00000E+00 0.0E+00 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.63424E+01 0.07834  6.63424E+01 0.07834  0.00000E+00 0.0E+00 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  9.73835E+01 0.00011  1.02160E+02 0.00017 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  6.25883E+06 0.04494  2.93007E+07 0.05524  7.20118E+07 0.06037  1.36434E+08 0.03789  1.63167E+08 0.05108  1.92122E+08 0.05915  1.40433E+08 0.06504  1.15208E+08 0.06481  1.74170E+08 0.06147  1.60586E+08 0.06058  1.81506E+08 0.06306  1.70808E+08 0.06006  1.80970E+08 0.06589  1.77078E+08 0.06423  1.78483E+08 0.06186  1.51340E+08 0.06223  1.53850E+08 0.06074  1.53871E+08 0.05727  1.51845E+08 0.06044  2.96973E+08 0.06247  2.77927E+08 0.06643  1.97048E+08 0.06006  1.24006E+08 0.05615  1.40916E+08 0.07690  1.25718E+08 0.05618  1.05887E+08 0.08723  1.68404E+08 0.05702  3.42742E+07 0.05865  4.23722E+07 0.05430  3.80830E+07 0.05240  2.30005E+07 0.06345  3.86457E+07 0.06129  2.62983E+07 0.04570  2.24476E+07 0.07611  4.38492E+06 0.06344  5.47389E+06 0.17424  4.32583E+06 0.07158  4.48530E+06 0.08814  4.35852E+06 0.05181  4.28974E+06 0.04169  4.43086E+06 0.05343  4.11122E+06 0.07090  7.76905E+06 0.06494  1.39992E+07 0.05172  1.65568E+07 0.07020  4.55522E+07 0.02930  5.70946E+07 0.02716  7.77770E+07 0.01537  6.02926E+07 0.04329  4.86375E+07 0.13630  3.46196E+07 0.00424  4.32141E+07 0.01517  7.48651E+07 0.01636  9.35279E+07 0.07287  1.50234E+08 0.06600  2.05456E+08 0.12058  2.34332E+08 0.03457  1.13312E+08 0.00529  7.29694E+07 0.04178  4.47872E+07 0.00513  4.91326E+07 0.02090  4.17664E+07 0.07043  2.88763E+07 0.00033  1.79045E+07 0.09774  1.79239E+07 0.02325  1.40859E+07 0.09827  9.96168E+06 0.00705  8.46788E+06 0.06487  1.04063E+07 0.53111  1.24900E+06 0.00294 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  9.94946E-01 0.00283 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  2.97549E+02 0.03695  1.00582E+02 0.02234 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.37829E-01 0.00207  1.16654E-01 0.01163 ];
INF_CAPT                  (idx, [1:   4]) = [  1.71630E-03 0.00281  1.69147E-03 0.01048 ];
INF_ABS                   (idx, [1:   4]) = [  2.37173E-03 0.00239  4.39777E-03 0.01154 ];
INF_FISS                  (idx, [1:   4]) = [  6.55427E-04 0.00130  2.70631E-03 0.01221 ];
INF_NSF                   (idx, [1:   4]) = [  1.58824E-03 0.00130  6.55156E-03 0.01221 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.42321E+00 1.0E-06  2.42085E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02292E+02 7.0E-08  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  8.47061E-08 0.00442  2.08801E-06 0.00524 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.35455E-01 0.00206  1.12250E-01 0.01152 ];
INF_SCATT1                (idx, [1:   4]) = [  2.06057E-02 0.00014  8.40057E-03 0.00660 ];
INF_SCATT2                (idx, [1:   4]) = [  3.40821E-03 0.00647  1.52125E-03 0.00499 ];
INF_SCATT3                (idx, [1:   4]) = [  5.86495E-04 0.01822  5.56322E-04 0.00871 ];
INF_SCATT4                (idx, [1:   4]) = [  2.18335E-04 0.04550  2.75617E-04 0.03802 ];
INF_SCATT5                (idx, [1:   4]) = [  2.71298E-05 0.13576  1.48506E-04 0.16920 ];
INF_SCATT6                (idx, [1:   4]) = [  1.08030E-05 0.01096  7.15180E-05 0.15876 ];
INF_SCATT7                (idx, [1:   4]) = [  1.66031E-05 0.17082  8.03483E-05 0.14293 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.35496E-01 0.00206  1.12250E-01 0.01152 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.06161E-02 0.00013  8.40057E-03 0.00660 ];
INF_SCATTP2               (idx, [1:   4]) = [  3.41002E-03 0.00646  1.52125E-03 0.00499 ];
INF_SCATTP3               (idx, [1:   4]) = [  5.86884E-04 0.01818  5.56322E-04 0.00871 ];
INF_SCATTP4               (idx, [1:   4]) = [  2.18330E-04 0.04501  2.75617E-04 0.03802 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.70305E-05 0.13705  1.48506E-04 0.16920 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.08096E-05 0.00566  7.15180E-05 0.15876 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.64605E-05 0.17440  8.03483E-05 0.14293 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.99285E-01 0.00435  9.72350E-02 0.00294 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.11379E+00 0.00435  3.42815E+00 0.00294 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  2.33109E-03 0.00254  4.39777E-03 0.01154 ];
INF_REMXS                 (idx, [1:   4]) = [  4.33739E-03 0.00197  5.77455E-03 0.01514 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
XE135_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37272E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.95433E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  8.34914E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  3.33492E-01 0.00207  1.96304E-03 0.00043  1.37014E-03 0.01773  1.10880E-01 0.01145 ];
INF_S1                    (idx, [1:   8]) = [  2.10190E-02 0.00012 -4.13257E-04 0.00112 -3.19017E-05 0.09863  8.43247E-03 0.00695 ];
INF_S2                    (idx, [1:   8]) = [  3.46622E-03 0.00647 -5.80058E-05 0.00653 -6.56071E-05 0.02279  1.58686E-03 0.00573 ];
INF_S3                    (idx, [1:   8]) = [  6.05117E-04 0.02167 -1.86222E-05 0.13033 -3.03745E-05 0.04586  5.86697E-04 0.01063 ];
INF_S4                    (idx, [1:   8]) = [  2.26281E-04 0.04158 -7.94590E-06 0.06609 -1.39666E-05 0.20534  2.89583E-04 0.02628 ];
INF_S5                    (idx, [1:   8]) = [  3.05534E-05 0.12439 -3.42355E-06 0.03423 -9.66847E-06 0.08989  1.58174E-04 0.15337 ];
INF_S6                    (idx, [1:   8]) = [  1.32595E-05 0.12809 -2.45656E-06 0.64320 -7.44536E-06 0.13285  7.89634E-05 0.13126 ];
INF_S7                    (idx, [1:   8]) = [  1.76192E-05 0.07392 -1.01610E-06 1.00000 -3.41376E-06 0.13940  8.37620E-05 0.14279 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33533E-01 0.00207  1.96304E-03 0.00043  1.37014E-03 0.01773  1.10880E-01 0.01145 ];
INF_SP1                   (idx, [1:   8]) = [  2.10294E-02 0.00010 -4.13257E-04 0.00112 -3.19017E-05 0.09863  8.43247E-03 0.00695 ];
INF_SP2                   (idx, [1:   8]) = [  3.46802E-03 0.00646 -5.80058E-05 0.00653 -6.56071E-05 0.02279  1.58686E-03 0.00573 ];
INF_SP3                   (idx, [1:   8]) = [  6.05506E-04 0.02163 -1.86222E-05 0.13033 -3.03745E-05 0.04586  5.86697E-04 0.01063 ];
INF_SP4                   (idx, [1:   8]) = [  2.26276E-04 0.04111 -7.94590E-06 0.06609 -1.39666E-05 0.20534  2.89583E-04 0.02628 ];
INF_SP5                   (idx, [1:   8]) = [  3.04540E-05 0.12549 -3.42355E-06 0.03423 -9.66847E-06 0.08989  1.58174E-04 0.15337 ];
INF_SP6                   (idx, [1:   8]) = [  1.32661E-05 0.11450 -2.45656E-06 0.64320 -7.44536E-06 0.13285  7.89634E-05 0.13126 ];
INF_SP7                   (idx, [1:   8]) = [  1.74766E-05 0.07650 -1.01610E-06 1.00000 -3.41376E-06 0.13940  8.37620E-05 0.14279 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  1.52263E-01 0.01337  1.11982E+00 0.02649 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  1.40125E-01 0.01872  1.48750E+00 0.02350 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  1.58814E-01 0.00751  1.51056E+00 0.01020 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  1.59513E-01 0.01316  7.45490E-01 0.05948 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  2.18958E+00 0.01337  2.97875E-01 0.02649 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  2.37967E+00 0.01872  2.24213E-01 0.02350 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  2.09901E+00 0.00751  2.20691E-01 0.01020 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  2.09006E+00 0.01316  4.48721E-01 0.05948 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
LAMBDA                    (idx, [1:  14]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

