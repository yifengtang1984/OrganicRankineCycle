clear

%% DOWTHERM-A Data
% Source: technical data sheet
% https://www.dow.com/en-us/pdp.dowtherm-a-heat-transfer-fluid.238000z.html#tech-content

DOWTHERM_A = struct;

DOWTHERM_A.T   = [15, 65, 105, 155, 205, 255, 305, 355, 405]; % degC
DOWTHERM_A.Cp  = [1.558, 1.701, 1.814, 1.954, 2.093, 2.231, 2.373, 2.527, 2.725]; % kJ/kg-K
DOWTHERM_A.rho = [1063.5, 1023.7, 990.7, 947.8, 902.5, 854, 801.3, 742.3, 672.5]; % kg/m^3
DOWTHERM_A.k   = [0.1395, 0.1315, 0.1251, 0.1171, 0.1091, 0.1011, 0.0931, 0.0851, 0.0771]; % W/m-K
DOWTHERM_A.mu  = [5, 1.58, 0.91, 0.56, 0.38, 0.27, 0.2, 0.16, 0.12]; % mPa*s
DOWTHERM_A.nu  = DOWTHERM_A.mu * 1e-3 ./ DOWTHERM_A.rho;  % m^2/s

save("DowthermProps.mat","DOWTHERM_A");

%% Toluene Data
% Source: REFPROP

Toluene = twoPhaseFluidTables([-300,800],[0.01,10],50,50,100,'Toluene','C:\Program Files (x86)\REFPROP 10.0\');
save("TolueneProps.mat","Toluene");

% twoPhaseFluidTables(gcb,Toluene);  % assign to property block



