close; clear; clc; format compact;
% Practical 1
%% Question 1
a1 = 12;
a1 = 12
b1 = 1;
c1 = a1+b1;
d1 = a1*b1
e1 = a1^b1;
f1 = a1/b1
g1 = a1\b1;

%% Question 2
a2 = [1 2 3 4]
b2 = [3 4 2 6];
c2 = a2.^b2
d2 = a2.*b2;
e2 = a2./b2
f2 = a2.\b2;

%% Question 3
whos; %Returns all variables in the current workspace along with their class, size, etc.

%% Question 4
c = [2>1, 2<1, ~(3>2 && 4>5)];
speed = 5;
class(c)
class(speed)
class("Mary had a little lamb")
X = [1 2 ; 3.4 pi];

%% Question 5
a = [1 2; 3 4; 5 6];
b = [1 2 3 4]
c = [1; 3; 5]
x = 1 : 2 : 10;
angles = (0.01 : 0.01 : 1) * pi;
f = [1:4]'
g = 1:4;
h = [ g' g' ]
v = [-2 3 0 4.5 -1.5];
v(1)
v(2:4)
v([3,5])
v = [4:-1:2]
a = 1:3; b = 2:3; c = [a b]
x = linspace(-pi,pi,10)
diag(a)
diag(v)
eye(4)
zeros(4,5)
ones(3,3)

%% Question 6
% Example of if-end statement
var = input('Guess the number which is neither positive nor negative ');
if var == -var
    fprintf('Correct!\n');
end 

%% Question 7
% Example of if-else-end statements
num = input('Enter an integer ');
if floor(num) == num && rem(num, 2) == 0
    fprintf('You entered an even number\n');
else
    if floor(num) == num && rem(num, 2) ~= 0
        fprintf('You entered an odd number\n');
    else
        disp('You entered a non-integer float');
    end
end

%% Question 8
% Example of if-elseif-else-end statements
grade = input('Enter a grade (A-F) ', 's');
if (70 < double(grade)) || (double(grade) < 65)
    disp('Invalid Grade');
else
    if double(grade)<66
        disp('Good score');
    elseif double(grade) < 69
        disp('Fair enough');
    else
        disp('Better next time');
    end
end

%% Question 9
% Example of for loop to calculate mean of input values
n = input('Enter no of values:  ');
sum_x = 0; sum_x2 = 0;
if n<2
    disp('Insufficient data');
else
    for ii = 1:n
        x = input('Enter data point value ');
        sum_x = sum_x + x;
        sum_x2 = sum_x2 + x^2;
    end
    x_bar = sum_x / n;
    std_dev = sqrt((n*sum_x2 - sum_x^2) / (n * (n-1)));
    fprintf('The mean of the input data is %f\n', x_bar);
    fprintf('The standard deviation of the input data is %f\n', std_dev);
    fprintf('The variance of the input data is %f\n', std_dev^2);
end 
 
%% Question 10
% Example of while loop to sum first n natural numbers
n1 = input('Enter the number: ');
n = n1;
sum = 0;
while n > 0
    sum = sum + n;
    n = n - 1;
end
fprintf('Sum of first %d natural numbers is %d\n', n1, sum);

%% Question 11
% Break statement example
for i = 0:5 
    fprintf('%d\n', i);
    if i + 1 == 5 
        break;
    end
end