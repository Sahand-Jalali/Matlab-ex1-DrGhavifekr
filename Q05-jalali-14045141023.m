clear;
clc;
rng(1);

A = 10 * rand(4);
disp('Original matrix:');
disp(A);
maximum_value = max(A(:));
minimum_value = min(A(:));
[maximum_row, maximum_column] = find(A == maximum_value, 1);
[minimum_row, minimum_column] = find(A == minimum_value, 1);
fprintf('Maximum = %.6f at row %d, column %d\n', ...
    maximum_value, maximum_row, maximum_column);
fprintf('Minimum = %.6f at row %d, column %d\n', ...
    minimum_value, minimum_row, minimum_column);

A(maximum_row, maximum_column) = minimum_value;
A(minimum_row, minimum_column) = maximum_value;
disp('Matrix after swapping the maximum and minimum:');
disp(A);
column_means = mean(A, 1);
disp('Column means after the swap:');
disp(column_means);
