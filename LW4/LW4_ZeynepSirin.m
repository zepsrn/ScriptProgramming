% Name: Zeynep Sirin
% Group: EDIfu25/1-1
% Laboratory Work 4 - Variant 5

clearvars;
clc;
close all;

%% Mandatory task - a

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

[X,Y] = meshgrid(x,y);
Z = sin(X.^2 + Y.^2);

figure
surf(X,Y,Z)
shading interp
colormap(parula)
view(50,50)
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = sin(x^2 + y^2)')
grid on


%% Mandatory task - b

x = -2:0.1:1;
y = -2:0.1:1;

[X,Y] = meshgrid(x,y);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure
surf(X,Y,Z)
shading interp
colormap(summer)
view(60,60)
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = 1 - 2x^2 - 3y^2')
grid on


%% Complementary task

x = -2:0.1:2;
y = -2:0.1:2;

[X,Y] = meshgrid(x,y);
Z = 1 - (X.^2 + Y.^2);

figure
surf(X,Y,Z,'FaceColor','blue')
alpha(0.5)
xlabel('x')
ylabel('y')
zlabel('z')
title('Transparent blue surface')
grid on