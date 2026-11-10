clear;
clc;

t = [0 1 2 5 10];
charging_voltage = 12 * (1 - exp(-t / 2));
fprintf('t = %.0f s: charging voltage = %.6f V\n', [t; charging_voltage]);

time_95 = -2 * log(0.05);
fprintf('Time to reach 95%% of 12 V = %.6f s\n', time_95);
discharging_voltage = 12 * exp(-t / 2);
fprintf('t = %.0f s: discharging voltage = %.6f V\n', [t; discharging_voltage]);
fprintf('Discharging voltage at 10 s = %.6f V\n', discharging_voltage(end));
