clear;
clc;

a = input('a (positive real number): ');
if ~isnumeric(a) || ~isscalar(a) || ~isreal(a) || ~isfinite(a) || a <= 0
    error('a must be a positive finite real scalar.');
end

a_values = [a 25 7 0.5];
approximations = zeros(size(a_values));
iteration_counts = zeros(size(a_values));
absolute_errors = zeros(size(a_values));
for k = 1:length(a_values)
    current_a = a_values(k);
    x = current_a;
    change = Inf;
    iterations = 0;
    while change >= 0.0001
        previous_x = x;
        x = (x + current_a / x) / 2;
        change = abs(x - previous_x);
        iterations = iterations + 1;
    end
    approximations(k) = x;
    iteration_counts(k) = iterations;
    reference = sqrt(current_a);
    absolute_errors(k) = abs(x - reference);
    if k == 1
        disp('User input:');
    else
        disp('Required test:');
    end
    fprintf('a = %.6g, estimate = %.10f, iterations = %d\n', ...
        current_a, x, iterations);
    fprintf('sqrt(a) = %.10f, absolute error = %.3e\n', reference, absolute_errors(k));
end
