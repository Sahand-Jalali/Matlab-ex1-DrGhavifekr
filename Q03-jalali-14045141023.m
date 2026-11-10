clear;
clc;

voltage = input('Voltage (V): ');
resistance = input('Resistance (Ohm): ');
if ~isnumeric(voltage) || ~isscalar(voltage) || ~isreal(voltage) ...
        || ~isfinite(voltage)
    error('Voltage must be a finite real scalar.');
end
if ~isnumeric(resistance) || ~isscalar(resistance) || ~isreal(resistance) ...
        || ~isfinite(resistance) || resistance <= 0
    error('Resistance must be a positive finite real scalar.');
end

current = voltage / resistance;
power = voltage * current;
fprintf('Current = %.4f A\n', current);
fprintf('Power = %.4f W\n', power);

%% Required test
% Test result: current = 0.0146341463 A, power = 0.1756097561 W.
test_voltage = 12;
test_resistance = 820;
test_current = test_voltage / test_resistance;
test_power = test_voltage * test_current;
fprintf('\nTest: V = 12 V, R = 820 Ohm\n');
fprintf('Current = %.10f A\n', test_current);
fprintf('Power = %.10f W\n', test_power);
