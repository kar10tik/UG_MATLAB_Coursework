% Comparison of errors to solve DE using ABM, RK, and Heun methods
clear, clf, clc;
t0 = 0; tf = 10; y0 = 0; %starting/final time, initial value
N = 50; %number of segments
df643 = inline('-y+1','t','y'); %differential equation to solve
f643 = inline('1-exp(-t)','t'); %true analytical solution
for KC = 0:1
    %KC = 1;
    tic, [t1,yR] = ode_RK4(df643,[t0 tf],y0,N); tR = toc;
    tic, [t1,yA] = ode_ABM(df643,[t0 tf],y0,N,KC); tA = toc;
    tic, [t1,yH] = ode_Ham(df643,[t0 tf],y0,N,KC); tH = toc;
    yt1 = f643(t1); %true analytical solution to plot
    subplot(221 + KC*2) %plot analytical/numerical solutions
    
    % subplot(1,2,1) %plot analytical/numerical solutions
    plot(t1,yt1,'k', t1,yR,'g-.', t1,yA,'c--', t1,yH,'r:')
    legend('analytical','RK','ABM','HAM')
    set(gcf,'color','w');
    tmp = abs(yt1)+eps; l_t1 = length(t1);
    eR = abs(yR - yt1)./tmp; e_R = norm(eR)/l_t1 % RK method error
    eA = abs(yA - yt1)./tmp; e_A = norm(eA)/l_t1 % ABM method error
    eH = abs(yH - yt1)./tmp; e_H = norm(eH)/l_t1 % Heun's method error
    subplot(222 + KC*2) %plot relative errors
    % subplot(1,2,2) %plot relative errors

    plot(t1,eR,'k', t1,eA,'g--', t1, eH,'c:')
    legend('RK','ABM','HAM')
    set(gcf,'color','w');
end