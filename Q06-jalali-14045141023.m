clear;
clc;

A = [120 80 45; 200 60 30; 90 140 75];
p = [35000; 80000; 120000];
branch_values = A * p;
fprintf('Branch %d: %.0f Toman\n', [1:3; branch_values.']);

elementwise_values = A .* p;
disp('A*p (column 1) next to A.*p (columns 2 to 4):');
disp([branch_values elementwise_values]);
disp('A.*p scales each row by one price and does not sum products.');

item_values = A .* p.';
disp('A.*p.'' applies the correct price to each product column:');
disp(item_values);
disp('Its row sums equal A*p:');
disp(sum(item_values, 2));

A_transpose = A.';
disp('A transpose: rows are product types; columns are branches.');
disp(A_transpose);
branch_counts = A * ones(3, 1);
disp('Total item count in each branch:');
disp(branch_counts);
