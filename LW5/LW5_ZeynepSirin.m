% Name: Zeynep Sirin
% Group: EDIfu25/1-1
% Laboratory Work 5 - Variant 5

clearvars;
clc;

%% Mandatory Task 1 - Data structures

studentCell = {'Zeynep', 'Sirin', 'Vilnius'};

fieldNames = {'Name', 'Surname', 'Address'};

student = cell2struct(studentCell, fieldNames, 2);

disp('Student structure:')
disp(student)

disp('Is student a structure?')
disp(isstruct(student))


%% Mandatory Task 2 - Operation flow control

format compact

while true

    x = input('Enter x: ');
    y = input('Enter y: ');

    if x == 0 && y == 0
        break
    end

    b = atan(y / x);

    result = zeros(10,3);

    for n = 1:10

        leftSide = (cos(b) + 1i*sin(b))^n;

        rightSide = cos(n*b) + 1i*sin(n*b);

        difference = leftSide - rightSide;

        result(n,:) = [leftSide rightSide difference];

    end

    disp('Left side        Right side       Difference')
    disp(result)

end


%% Complementary Task - Variant 5

x = input('Enter number of rows x: ');
y = input('Enter number of columns y: ');

for k = 1:20

    m = ceil(rand * x);
    n = ceil(rand * y);

    A = zeros(x,y);

    A(m,n) = NaN;

    disp(A)

    pause(2)

end