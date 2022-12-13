clear; clf; close all; clc;
tspan = [0 2];
t1 = tspan(1)+ [0:100] * (tspan(2) - tspan(1))/100;
%  a = 1; yt1 = 1 - exp(-a*t1);
%  true analytical solution
t0 = 0; tf = 10; y0 = 0; %starting/final time, initial value
N = 50; %number of segments
df643 = inline('-y+1','t','y'); %differential equation to solve
f643 = inline('1-exp(-t1)','t1'); %true analytical solution
for KC = 0:1
    [t1,yH] = ode_Ham(df643,[t0 tf],y0,N,KC);
    tic, [t1,yH] = ode_Ham(df643,[t0 tf],y0,N,KC);
    tA = toc;
    yt1 = f643(t1); %true analytical solution to plot
end
figure(1);
plot(t1,yt1,'k', t1,yH,'g--')
legend('analytical','Hamming')
xlabel('time')
ylabel('solution')
set(gcf,'color','w');
tmp = abs(yt1)+eps; l_t1 = length(t1);
eH = abs(yH - yt1)./tmp; 
% e_A = norm(eA)/lt1
figure(2);
plot( t1,eH,'k--')
legend('error')
xlabel('time')
ylabel('error')
set(gcf,'color','w');