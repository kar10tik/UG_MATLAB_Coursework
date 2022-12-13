% Heun/Euler/RK4 method to solve a differential equation (DE)
clear; close; clc; format compact;
tspan = [0 2];
t = tspan(1)+[0:100]*(tspan(2) - tspan(1))/100;
a = 1; yt = 1 - exp(-a*t);
% true analytical solution
plot(t,yt,'k'), hold on
df61 = inline('-y + 1','t','y'); %First order DE to be solved
y0 = 0; N = 4;
[t1,ye] = ode_Euler(df61,tspan,y0,N);
[t1,yh] = ode_Heun(df61,tspan,y0,N);
[t1,yr] = ode_RK4(df61,tspan,y0,N);
figure(1);
plot(t,yt,'g-.', t1,yh,'b--', t1,yr,'r:', t1,ye,'m-.');
legend('analytical','Heun','RK','Euler');
set(gcf,'color','w');
% figure(2)
% plot(t1,ye,'bo', t1,yh,'b+', t1,yr,'r*')
N = 1e3; % to estimate the time for N iterations
tic, [t1,ye] = ode_Euler(df61,tspan,y0,N); time_Euler = toc
tic, [t1,yh] = ode_Heun(df61,tspan,y0,N); time_Heun = toc
tic, [t1,yr] = ode_RK4(df61,tspan,y0,N); time_RK4 = toc