clear;
clc;
if exist('OCTAVE_VERSION', 'builtin')
    pkg load symbolic
end

t = 0:0.01:5;
velocity = 3 * t.^2 + 2 * t;
distance_fine = trapz(t, velocity);

syms time
velocity_symbolic = 3 * time^2 + 2 * time;
distance_symbolic = int(velocity_symbolic, time, 0, 5);
distance_exact = double(distance_symbolic);
fprintf('trapz, step 0.01: %.8f m\n', distance_fine);
fprintf('Symbolic integral: %.8f m\n', distance_exact);
fprintf('Fine-grid absolute error: %.8f m\n', abs(distance_fine - distance_exact));

t_coarse = 0:0.5:5;
velocity_coarse = 3 * t_coarse.^2 + 2 * t_coarse;
distance_coarse = trapz(t_coarse, velocity_coarse);
coarse_error = abs(distance_coarse - distance_exact);
fprintf('trapz, step 0.5: %.8f m\n', distance_coarse);
fprintf('Coarse-grid absolute error: %.8f m\n', coarse_error);

cumulative_distance = cumtrapz(t, velocity);
half_distance_index = find(cumulative_distance > distance_exact / 2, 1);
half_distance_time = t(half_distance_index);
fprintf('First sample past half the exact distance: t = %.2f s\n', half_distance_time);
fprintf('Distance at that sample = %.8f m\n', cumulative_distance(half_distance_index));
