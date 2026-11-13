% Name: Zeynep Sirin
% Group: EDIfu25/1-1
% Laboratory Work 6 - Variant 5

clearvars;
clc;

%% Mandatory Task 1

F = 100;
C = farenh2cels(F);

disp('Fahrenheit:')
disp(F)

disp('Celsius:')
disp(C)

help farenh2cels


%% Mandatory Task 2

global x y

x = 0:0.2:2*pi;

globalcalc

whos x y

figure
plot(x, y, 'r:s')
xlabel('x')
ylabel('sin(x) + cos(x)')
title('sin(x) + cos(x)')
grid on


%% Complementary Task

result1 = specfunc(3);
result2 = specfunc(2,3);

disp('specfunc with one input:')
disp(result1)

disp('specfunc with two inputs:')
disp(result2)
