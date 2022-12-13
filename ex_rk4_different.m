%% section 1 diff eqn. dy/dx  =  -y+1
% h = (2-0)/20 = 0.1
close all;
clear all;
clc;
f = @(x,y)(-y+1);
tspan = [0 2];
y0 = 0;
N = 8;
figure(1);
[t,y] = ode_RK4(f,tspan,y0,N)
plot(t,y,'m:','LineWidth',2)
hold on;
a = 1;
t = 0:0.1:2
y = 1-exp(-a*t)
plot(t,y,'g--','LineWidth',2)
legend('Runge-Kutta O4 Approximation','original')
set(gcf,'color','w');
%% section 2 dy/dx  =  x^2+y
close all;
clear all;
clc;
f = @(x,y)(x^2+y);
tspan = [0 2];
y0 = 0;
N = 8;
figure(2);
subplot(2,2,1)
[t,y] = ode_RK4(f,tspan,y0,N)
plot(t,y,'g:','LineWidth',2)
legend('Runga-Kutta Approximation','location','best')
% hold on;
subplot(2,2,2)
[t2,y2] = ode_Heun(f,tspan,y0,N)
plot(t2,y2,'k--','LineWidth',2)
legend('Heun Approximation','location','best')
% hold on;
subplot(2,2,3)
[t3,y3] = ode_Euler(f,tspan,y0,N)
plot(t3,y3,'c--','LineWidth',2)
legend('Euler Approximation','location','best')
% hold on;
a = 1;
t1 = 0:0.1:2
y1 = 2*exp(t1)-(t1.^2)-(2*t1)-2;
subplot(2,2,4),
plot(t1,y1,'r-')
legend('original','location','best')
set(gcf,'color','w');
%% section 3 dy/dx  =  x^2+y
close all; clear all; clc;
f = @(x,y)(x^2+y);
tspan  =  [0 2];
y0 = 0;
N = 8;
figure(3);
[t,y] = ode_RK4(f,tspan,y0,N)
plot(t,y,'g:','LineWidth',2)
%legend('location','best')
hold on;
[t2,y2] = ode_Heun(f,tspan,y0,N)
plot(t2,y2,'k--','LineWidth',2)
% legend('location','best')
hold on;
[t3,y3] = ode_Euler(f,tspan,y0,N)
plot(t3,y3,'c--','LineWidth',2)
% legend('location','best')
 hold on;
a = 1;
t1 = 0:0.1:2
y1 = 2*exp(t1)-(t1.^2)-(2*t1)-2;
plot(t1,y1,'r-')
legend('Runga-Kutta Approximation','Heun Approximation','Euler Approximation','original','location','best')
title('Comparison plot');
set(gcf,'color','w');