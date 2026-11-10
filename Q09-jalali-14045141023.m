clear;
clc;
if exist('OCTAVE_VERSION', 'builtin')
    pkg load symbolic
end

dt = 0.5;
t = 0:dt:20;
position = 60 * (1 - exp(-t / 5));
velocity_diff = diff(position) / dt;
velocity_gradient = gradient(position, dt);
acceleration_gradient = gradient(velocity_gradient, dt);
fprintf('length(t) = %d\n', length(t));
fprintf('length(diff velocity) = %d\n', length(velocity_diff));
fprintf('length(gradient velocity) = %d\n', length(velocity_gradient));

syms time
position_symbolic = 60 * (1 - exp(-time / 5));
velocity_symbolic = diff(position_symbolic, time);
acceleration_symbolic = diff(velocity_symbolic, time);
disp('Symbolic velocity:');
disp(velocity_symbolic);
velocity_at_5 = double(subs(velocity_symbolic, time, 5));
index_5 = find(t == 5, 1);
fprintf('Exact velocity at 5 s = %.8f m/s\n', velocity_at_5);
fprintf('Gradient velocity at 5 s = %.8f m/s\n', velocity_gradient(index_5));

[maximum_velocity, maximum_index] = max(velocity_gradient);
index_10 = find(t == 10, 1);
fprintf('Maximum gradient velocity = %.8f m/s at t = %.1f s\n', ...
    maximum_velocity, t(maximum_index));
fprintf('Gradient velocity at 10 s = %.8f m/s\n', velocity_gradient(index_10));
fprintf('Gradient acceleration at 10 s = %.8f m/s^2\n', acceleration_gradient(index_10));
fprintf('Exact velocity at 10 s = %.8f m/s\n', ...
    double(subs(velocity_symbolic, time, 10)));
fprintf('Exact acceleration at 10 s = %.8f m/s^2\n', ...
    double(subs(acceleration_symbolic, time, 10)));
