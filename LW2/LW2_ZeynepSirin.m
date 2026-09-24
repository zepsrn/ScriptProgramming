% Name: Zeynep Sirin
% Group: EDIfu25/1-1
% Date: 2026-09-18
% Laboratory Work 2 - Variant 5

clearvars;
clc;

%% 1. Vectors

v1 = (-2*pi:pi/4:2*pi).';

v2 = tan(v1);

v3 = v1 ./ v2;

disp('Vector 1:')
disp(v1)

disp('Tangent of Vector 1:')
disp(v2)

disp('Vector 1 divided by Vector 2:')
disp(v3)


%% 2. Matrices

Z = randn(2,3);

Z = Z.';

A_rand = randn(3,1);

M = [Z A_rand];

D = det(M);

disp('Transposed matrix Z:')
disp(Z)

disp('Random matrix A:')
disp(A_rand)

disp('Joined matrix M:')
disp(M)

disp('Determinant of M:')
disp(D)


%% 3. Practical application

t = 0:0.005:2;

Amp = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;

s = Amp .* cos(2*pi*f.*t);

n = sigma .* randn(size(t));

s = s + n;

selected = s(s > U1);

filtered = s;
filtered(abs(filtered) < U2) = 0;

number_unfiltered = length(s);
number_selected = length(selected);

minimum_filtered = min(filtered);
maximum_filtered = max(filtered);

disp('Number of samples in the unfiltered signal:')
disp(number_unfiltered)

disp('Number of samples above U1:')
disp(number_selected)

disp('Minimum value of the filtered signal:')
disp(minimum_filtered)

disp('Maximum value of the filtered signal:')
disp(maximum_filtered)


%% Complementary task - Variant 5

A = input('Enter vector A, for example [1 2 3 4]: ');

A = A(:).';

logicalIndex = true(size(A));
logicalIndex(end) = false;

A_without_last = A(logicalIndex);

B = [A A_without_last(end:-1:1)];

disp('vector B is:')
disp(B)