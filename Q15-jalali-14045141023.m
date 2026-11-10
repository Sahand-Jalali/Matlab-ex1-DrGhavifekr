clear;
clc;

temperatures_C = [-40 0 25 100];
temperatures_K = c2k(temperatures_C);
fprintf('%.2f deg C = %.2f K\n', [temperatures_C; temperatures_K]);

norm_first = norm3([3 4]);
norm_second = norm3([1 2 2]);
fprintf('norm3([3 4]) = %.10f\n', norm_first);
fprintf('norm3([1 2 2]) = %.10f\n', norm_second);

[P, S] = powerCalc(220, 5, 0.9);
fprintf('Active power P = %.2f W\n', P);
fprintf('Apparent power S = %.2f VA\n', S);
