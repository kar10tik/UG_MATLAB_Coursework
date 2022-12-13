%% Section 1 diff eqn.  dy/dx =  x^2+y
% h= (2-0)/20= 0.1
close; clear all; clc;
f= @(x,y)(x^2+y);
tspan= [0 2];
y0= 0;
N= 20;
[t,y]= ode_Euler(f,tspan,y0,N);
plot(t,y,'r--')
hold on;
tspan= [0 2];
N= 40;
[t,y]= ode_Euler(f,tspan,y0,N);
plot(t,y,'g-.')
title('Numerical solution of diff eqn using Euler Method');
legend('numerical Euler hs= 0.1', 'numerical Euler hs= 0.05');
set(gcf,'color','w');

%% Section 2 diff eqn. dy/dx =  -y+1
% h= (2-0)/20= 0.1
clear all; close all; clc;
f= @(x,y)(-y+1);
tspan= [0 2];
y0= 0;
N1= 10;
[t1,y1]= ode_Euler(f,tspan,y0,N1);
plot(t1,y1,'g:','LineWidth',2)
hold on;
N2= 20;
[t2,y2]= ode_Euler(f,tspan,y0,N2);
plot(t2,y2,'b-.','LineWidth',2)
hold on;
a= 1;
t = 0:0.1:2;
y = 1-exp(-a*t);
plot(t,y,'m-.','LineWidth',2)
legend('Euler Approximation N= 10','Euler Approximation N= 20','original')
set(gcf,'color','w');