clear;
clc;
if exist('OCTAVE_VERSION', 'builtin')
    pkg load symbolic
end

syms t x
limit_a = limit((1 - cos(t)) / t^2, t, 0);
limit_b = limit((2 * t + 1) / (t - 3), t, Inf);
limit_left = limit(1 / x, x, 0, 'left');
limit_right = limit(1 / x, x, 0, 'right');
disp('Limit of (1-cos(t))/t^2 as t -> 0:');
disp(limit_a);
disp('Limit of (2*t+1)/(t-3) as t -> Inf:');
disp(limit_b);
disp('Left-hand limit of 1/x at zero:');
disp(limit_left);
disp('Right-hand limit of 1/x at zero:');
disp(limit_right);
