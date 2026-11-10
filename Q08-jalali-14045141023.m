clear;
clc;

p = [-5 40 0];
t = [0 2 4 6];
height = polyval(p, t);
fprintf('t = %.0f s: height = %.4f m\n', [t; height]);
ground_times = roots(p);
disp('Ground times (s):');
disp(ground_times);

factored_p = 5 * conv([1 0], [-1 8]);
disp('Coefficients from 5*t*(8-t):');
disp(factored_p);
fprintf('Coefficient vectors are equal: %d\n', isequal(factored_p, p));

a = p(1);
b = p(2);
maximum_time = -b / (2 * a);
maximum_height = polyval(p, maximum_time);
fprintf('Maximum height = %.4f m at t = %.4f s\n', maximum_height, maximum_time);
