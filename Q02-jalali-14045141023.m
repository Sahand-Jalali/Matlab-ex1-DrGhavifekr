clear;
clc;

daily_energy = 4.2;
price_per_kWh = 5000;
days_per_month = 30;
days_per_year = 365;
monthly_income = daily_energy * price_per_kWh * days_per_month;
annual_income = daily_energy * price_per_kWh * days_per_year;

disp('Monthly income:');
fprintf('Income: %.2f Toman\n', monthly_income);
disp('Annual income:');
fprintf('Income: %.2f Toman\n', annual_income);
fprintf('Percent sign: %%\n');

value = 10 / 3;
disp('Workspace variables:');
who
disp('format long:');
format long
disp(value);
disp('format short:');
format short
disp(value);
