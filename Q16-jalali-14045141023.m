clear;
clc;
close all;

%% Part a
t = 0:0.1:5;
y1 = sin(t) .* cos(t).^2 ./ (t.^2 + 1);
y2 = sqrt(t.^3) .* exp(2);
figure('Color', 'w');
plot(t, y1, 'b', 'LineWidth', 1.5);
hold on;
plot(t, y2, 'r', 'LineWidth', 2.5);
hold off;
legend('y1(t)', 'y2(t)', 'Location', 'northwest');
title('Two functions on the same axes');
xlabel('t');
ylabel('Function value');
grid on;

%% Part b
x = -2:0.05:2;
f = sin(x).^2 + sinh(x).^2;
Z = cos(x).^2 + cosh(x).^2;
k = x.^2 + 2 * x .* sin(x);
figure('Color', 'w');
subplot(3, 1, 1);
plot(x, f, 'b', 'LineWidth', 1.5);
title('f(x) = sin^2(x) + sinh^2(x)');
xlabel('x');
ylabel('f(x)');
grid on;
subplot(3, 1, 2);
plot(x, Z, 'r', 'LineWidth', 1.5);
title('Z(x) = cos^2(x) + cosh^2(x)');
xlabel('x');
ylabel('Z(x)');
grid on;
subplot(3, 1, 3);
plot(x, k, 'k', 'LineWidth', 1.5);
title('k(x) = x^2 + 2x sin(x)');
xlabel('x');
ylabel('k(x)');
grid on;

%% Parts c and d
t_fine = 0:0.001:2;
signal_fine = sin(2 * pi * 3 * t_fine);
t_sample = 0:0.1:2;
signal_sample = sin(2 * pi * 3 * t_sample);
figure('Color', 'w');
subplot(2, 1, 1);
plot(t_fine, signal_fine, 'b', 'LineWidth', 1.5);
title('3 Hz carrier: fine time grid');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([0 2]);
grid on;
subplot(2, 1, 2);
stem(t_sample, signal_sample, 'r', 'filled');
title('Samples with a 0.1 s interval');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([0 2]);
grid on;
