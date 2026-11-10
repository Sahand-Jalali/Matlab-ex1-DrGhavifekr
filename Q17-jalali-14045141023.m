clear;
clc;
close all;
rng(1);

daily_consumption = rand(1, 5);
figure('Color', 'w');
bar(1:5, daily_consumption, 'r');
title('Daily electricity consumption');
xlabel('Day');
ylabel('Energy (kWh)');
grid on;

shares = [22 28 8 33 11];
names = {'Cooling', 'Water heater', 'Lighting', 'Other appliances', 'Charging'};
normalized_percent = 100 * shares / sum(shares);
labels = cell(1, 5);
for k = 1:5
    labels{k} = sprintf('%s (%.2f%%)', names{k}, normalized_percent(k));
end
explode = zeros(1, 5);
[largest_share, largest_index] = max(shares);
explode(largest_index) = 1;
fprintf('Given percentages sum to %.0f%%.\n', sum(shares));
disp('The pie uses the given numbers as weights; labels show normalized shares.');
fprintf('%s: %.4f%%\n', names{1}, normalized_percent(1));
fprintf('%s: %.4f%%\n', names{2}, normalized_percent(2));
fprintf('%s: %.4f%%\n', names{3}, normalized_percent(3));
fprintf('%s: %.4f%%\n', names{4}, normalized_percent(4));
fprintf('%s: %.4f%%\n', names{5}, normalized_percent(5));
figure('Color', 'w');
pie(shares, explode, labels);
title('Household consumption: normalized given weights');
