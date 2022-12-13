% Numerically approximate first derivatives using forward differences
% Program to calculate forward differences
close; clear; clc;
x = linspace(0,pi/2,10);
y = sin(x);
dydx_anal = cos(x);
length(dydx_anal)
dydx_approx = diff(y)./diff(x);
length(dydx_approx)
dydx_approx(length(x)) = NaN;
length(dydx_approx)
error = (dydx_anal-dydx_approx)./dydx_anal;
per_error = error * 100;
table = [x; dydx_anal;dydx_approx;per_error];
disp('Forward Difference Approximation of the derivative of sin(x)')
disp(' x         dy/dx         dy/dx      % error')
disp('           cos(x)    forward approx.')
fprintf('%8.4f\t%8.4f\t%8.4f\t%8.4f\n',table)
plot(x,dydx_anal,'rs-',x,dydx_approx,'gv:')
set(gcf,'color','w');
xlabel('x');
ylabel('forward difference of sinx');
legend('dy/dx analytical','dy/dx approx');

length(diff(x))
diffx = diff(x);
diffx(length(x)) = NaN;
diffx
x = x + diffx/2;
bar(x,dydx_approx)
title('Approximating derivatives using forward finite differences');
xlabel('x, rad')
ylabel('cos(x) rate of temperature change, deg/hr')