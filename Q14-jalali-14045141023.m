clear;
clc;

disp('Odd numbers using for:');
for number = 3:2:34
    fprintf('%d ', number);
end
fprintf('\nOdd numbers using while:\n');
number = 3;
while number <= 34
    fprintf('%d ', number);
    number = number + 2;
end
fprintf('\n');

x = input('x (nonzero): ');
n = input('n (positive integer): ');
if ~isnumeric(x) || ~isscalar(x) || ~isreal(x) || ~isfinite(x) || x == 0
    error('x must be a nonzero finite real scalar.');
end
if ~isnumeric(n) || ~isscalar(n) || ~isreal(n) || ~isfinite(n) ...
        || n < 1 || n ~= floor(n)
    error('n must be a positive integer.');
end
y = 0;
for k = 1:n
    y = y + (2 / x)^k;
end
fprintf('Series sum = %.10f\n', y);

test_x = 2;
test_n = 10;
test_y = 0;
for k = 1:test_n
    test_y = test_y + (2 / test_x)^k;
end
fprintf('Test x = 2, n = 10: sum = %.10f\n', test_y);

target = 500;
v = 0;
steps = 0;
while abs(target - v) >= 5
    v = v + 0.1 * (target - v);
    steps = steps + 1;
end
fprintf('Final speed = %.8f units\n', v);
fprintf('Final error = %.8f units\n', abs(target - v));
fprintf('Number of steps = %d\n', steps);
