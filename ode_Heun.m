function [t,y] = ode_Heun(f,tspan,y0,N)
    %Heun method to solve vector differential equation y�(t) = f(t,y(t))
    % for tspan = [t0,tf] and with the initial value y0 and N time steps
    if nargin<4 || N <= 0, N = 100; end
    if nargin<3, y0 = 0; end
    h = (tspan(2) - tspan(1))/N; %stepsize
    t = tspan(1) + [0:N]'*h; %time vector
    y(1,:) = y0(:)'; %always make the initial value a row vector
    for k = 1:N
        fk = feval(f,t(k),y(k,:)); y(k+1,:) = y(k,:)+h*fk; 
        y(k+1,:) = y(k,:) +h/2*(fk +feval(f,t(k+1),y(k+1,:))); 
    end
end