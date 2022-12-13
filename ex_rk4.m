%% Section 1 DE: dy/dx = - y + 1
% h=(2-0)/20=0.1
close all; clear all; clc;
f = @(x,y)(-y+1);
tspan = [0 3];
y0 = 0;
N = 8;
figure(1);
[t,y] = ode_RK4(f,tspan,y0,N)
plot(t,y,'g:','LineWidth',2);
hold on;
a = 1;
t = 0:0.1:3
y = 1-exp(-a.*t);
plot(t,y,'m--');
legend('Runge-Kutta Order 4 Approximation','original','Location','Best');
title("DE: y' + y - 1 = 0");
set(gcf,'color','w');
%% Section 2 DE: dy/dx = x^2 + y
close all; clear all; clc;
f = @(x,y)(x^2+y);
tspan = [0 2];
y0 = 0;
N = 8;
figure(2);
[t,y] = ode_RK4(f,tspan,y0,N)
plot(t,y,'g:','LineWidth',2);
hold on;
a = 1;
t1 = 0:0.1:2
y1 = 2*exp(t1) - (t1.^2) - (2.*t1) - 2;
plot(t1,y1,'r-');
title("DE: y' - x^2 - y = 0");
legend('Run7ga-Kutta Approximation','original','Location','Best');
set(gcf,'color','w');