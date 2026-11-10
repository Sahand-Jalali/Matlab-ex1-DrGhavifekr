clear;
clc;
if exist('OCTAVE_VERSION', 'builtin')
    pkg load symbolic
end

syms s t
Is = 12 / (s * (4 + s / 5));
current_time = ilaplace(Is, s, t);
disp('Current i(t) (A):');
disp(current_time);

sample_times = [0.1 1];
sample_currents = double(subs(current_time, t, [sym(1)/10 sym(1)]));
fprintf('t = %.1f s: current = %.9f A\n', [sample_times; sample_currents]);
steady_current = double(limit(current_time, t, Inf));
voltage = 12;
resistance = 4;
ohm_current = voltage / resistance;
fprintf('Steady current from limit = %.6f A\n', steady_current);
fprintf('Voltage / resistance = %.6f A\n', ohm_current);
