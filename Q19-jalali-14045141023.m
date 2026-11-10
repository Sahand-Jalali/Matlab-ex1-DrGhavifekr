clear;
clc;
rng(1);

A = rand(4);
comparison_A = (A == A.');
is_symmetric_A = all(comparison_A(:));
disp('Random matrix A:');
disp(A);
fprintf('A is symmetric: %d\n', is_symmetric_A);

S = (A + A.') / 2;
comparison_S = (S == S.');
is_symmetric_S = all(comparison_S(:));
disp('S = (A + A.'') / 2:');
disp(S);
fprintf('S is symmetric: %d\n', is_symmetric_S);

B = [1 2 3; 2 4 5; 3 5 6];
comparison_B = (B == B.');
is_symmetric_B = all(comparison_B(:));
disp('Manual symmetric matrix B:');
disp(B);
fprintf('B is symmetric: %d\n', is_symmetric_B);
