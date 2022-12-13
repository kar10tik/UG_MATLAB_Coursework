%% Section 1 diff eqn. dy/dx = -y + 1
clc; clear all; close all;
% solution y = 1-exp(-at)
% h = (2-0)/20 = 0.1
f = @(x,y)(-y+1);
tspan = [0 2];
y0 = 0;
N = 8;
[t,y] = ode_Heun(f,tspan,y0,N);
plot(t,y,'g:','LineWidth',2)
hold on;
a = 1;
t = 0:0.1:2
y = 1-exp(-a*t)
plot(t,y,'r--'), legend('Heun Approximation','original');
title("DE: y' + y - 1 = 0"), xlabel('x'), ylabel('y');
set(gcf,'color','w');
%% Section 2
close all; clear all; clc;
f = @(x,y)(-y+1);
tspan = [0 2];
y0 = 0;
N = 8;
[t,y] = ode_Heun(f,tspan,y0,N)
subplot(1,2,1)
plot(t,y,'g:','LineWidth',2);
legend('Heun Approximation','location','best')
% hold on;
a = 1;
t = 0:0.1:2
y = 1-exp(-a*t)
subplot(1,2,2)
plot(t,y,'r--')
legend('original','location','best')
set(gcf,'color','w');
%% Section 3 DE dy/dx  =  x^2 + y
% h = (2-0)/20 = 0.1
% solution y = 2e(t)-t^2-t-2
close all; clear all; clc;
f = @(x,y)(x^2+y);
tspan = [0 2];
y0 = 0;
N = 8;
[t,y] = ode_Heun(f,tspan,y0,N)
plot(t,y,'g:','LineWidth',2)
hold on;
% repeat with different N
N = 20;
[t,y2] = ode_Heun(f,tspan,y0,N)
plot(t,y2,'c-.','LineWidth',1)
hold on;
set(gcf,'color','w');

t1 = 0:0.1:2
y1_orig_n_20 = 2*exp(t1)-(t1.^2)-(2*t1)-2;
plot(t1,y1_orig_n_20,'r-')
legend('Heun Approximation N = 8','Heun Approximation N = 20','original')
set(gcf,'color','w');

t_Orig_n_8 = linspace(0,2,9)
y1 = 2*exp(t_Orig_n_8)-(t_Orig_n_8.^2)-(2*t_Orig_n_8)-2;

for i = 0:0.25:2
    error1 = y1'-y;
end
for i = 0:0.1:2
    error2 = y1_orig_n_20'-y2;
end
plot(t_Orig_n_8,error1,'g-.')
hold on;
plot(t1,error2,'r--')
legend('error N = 8','error N = 20')
set(gcf,'color','w');

%% Section 4 diff eqn. dy/dx  =  x^2+y
% h = (2-0)/20 = 0.1
%solution y = 2e(t)-t^2-t-2
f = @(x,y)(x^2+y);
tspan = [0 2];
y0 = 0;
N = 8;
[t,y] = ode_Heun(f,tspan,y0,N)
subplot(1,2,1)
plot(t,y,'g:','LineWidth',2)
legend('Heun Approximation')
% hold on;
a = 1;
t1 = 0:0.1:2
y1 = 2*exp(t1)-(t1.^2)-(2*t1)-2;
% ?x^2?2x+2e^x?2
subplot(1,2,2)
plot(t1,y1,'r-')
legend('original')
set(gcf,'color','w');