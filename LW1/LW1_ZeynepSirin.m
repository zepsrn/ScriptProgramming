% Name: Zeynep Sirin
% Group: EDIfu25/1-1
% Date: 2026-09-11
% Laboratory Work 1

clearvars;
clc;

%% Mandatory task

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('x-ai')
ylabel('F_1 [-o-]    |    F_2 [x-x]')


%% Complementary task

N = 5;

v = (N + 1):0.5:(N + 4);

A = [N     N + 1 N + 2;
     N + 3 N + 4 N + 5;
     N + 6 N + 7 N + 8];

part_a = A(3,2);

part_b = A(2:3,1:2);

part_c = A([1 3],[1 3]);

v_modified = v(1:3);

A_with_vector = [A; v_modified];

disp('Vector v:')
disp(v)

disp('Matrix A:')
disp(A)

disp('Selected element - a):')
disp(part_a)

disp('Selected elements - b):')
disp(part_b)

disp('Selected elements - c):')
disp(part_c)

disp('Matrix A concatenated with modified vector:')
disp(A_with_vector)
