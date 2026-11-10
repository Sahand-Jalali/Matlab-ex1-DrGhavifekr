clear;
clc;

%% Part a
consumption = 245;
first_limit = 100;
first_rate = 1500;
extra_rate = 3000;
bill = min(consumption, first_limit) * first_rate ...
    + max(consumption - first_limit, 0) * extra_rate;
fprintf('Part a: %.0f kWh -> %.0f Toman\n', consumption, bill);

%% Part b
consumptions = [245 400];
bills = min(consumptions, first_limit) .* first_rate ...
    + max(consumptions - first_limit, 0) .* extra_rate;
fprintf('\nPart b:\n');
fprintf('%.0f kWh -> %.0f Toman\n', [consumptions; bills]);
