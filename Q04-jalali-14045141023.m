clear;
clc;

temperature = [22.5 22.8 23.1 24.0 25.2 26.1 26.0 25.4 24.3 23.2];
mean_temperature = mean(temperature);
maximum_temperature = max(temperature);
minimum_temperature = min(temperature);
standard_deviation = std(temperature);

fprintf('Mean = %.4f deg C\n', mean_temperature);
fprintf('Maximum = %.4f deg C\n', maximum_temperature);
fprintf('Minimum = %.4f deg C\n', minimum_temperature);
fprintf('Sample standard deviation = %.4f deg C\n', standard_deviation);

deviation = temperature - mean_temperature;
disp('Deviations from the mean (deg C):');
disp(deviation);
sorted_temperature = sort(temperature);
disp('Sorted temperatures (deg C):');
disp(sorted_temperature);
disp('Third sorted temperature (deg C):');
disp(sorted_temperature(3));
