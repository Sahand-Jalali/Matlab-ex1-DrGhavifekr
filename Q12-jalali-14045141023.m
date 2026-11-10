clear;
clc;

value = (2 + 3 * 1i) / (3 - 4 * 1i);
fprintf('(2+3i)/(3-4i) = %.6f %+.6fi\n', real(value), imag(value));

R = 10;
L = 0.1;
C = 2e-4;
f = 50;
w = 2 * pi * f;
Z = R + 1i * (w * L - 1 / (w * C));
impedance_magnitude = abs(Z);
phase_degrees = angle(Z) * 180 / pi;
fprintf('Real part of Z = %.6f Ohm\n', real(Z));
fprintf('Imaginary part of Z = %.6f Ohm\n', imag(Z));
fprintf('|Z| = %.6f Ohm\n', impedance_magnitude);
fprintf('Phase = %.6f degrees\n', phase_degrees);
