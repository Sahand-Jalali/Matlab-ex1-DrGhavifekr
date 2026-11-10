clear;
clc;
close all;

a = input('Coefficient a (nonzero): ');
b = input('Coefficient b: ');
c = input('Coefficient c: ');
if ~isnumeric(a) || ~isscalar(a) || ~isreal(a) || ~isfinite(a) || a == 0
    error('a must be a nonzero finite real scalar.');
end
if ~isnumeric(b) || ~isscalar(b) || ~isreal(b) || ~isfinite(b) ...
        || ~isnumeric(c) || ~isscalar(c) || ~isreal(c) || ~isfinite(c)
    error('b and c must be finite real scalars.');
end

p = [a b c];
equation_roots = roots(p);
disp('Roots:');
disp(equation_roots);

if isreal(equation_roots)
    margin = max(1, max(equation_roots) - min(equation_roots));
    x_min = min(equation_roots) - margin;
    x_max = max(equation_roots) + margin;
else
    vertex_x = -b / (2 * a);
    x_min = vertex_x - 5;
    x_max = vertex_x + 5;
end
x = linspace(x_min, x_max, 1000);
y = polyval(p, x);
figure('Color', 'w');
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;
plot([x_min x_max], [0 0], 'k:');
if isreal(equation_roots)
    plot(equation_roots, zeros(size(equation_roots)), 'ro', ...
        'MarkerSize', 8, 'LineWidth', 2);
    legend('Polynomial', 'y = 0', 'Real roots', 'Location', 'northwest');
else
    disp('No real roots to mark on the real x-axis.');
    legend('Polynomial', 'y = 0', 'Location', 'northwest');
end
hold off;
title(sprintf('y = %.4g x^2 %+.4g x %+.4g', a, b, c));
xlabel('x');
ylabel('y');
grid on;
