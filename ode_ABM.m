function [t,y] = ode_ABM(f,tspan,y0,N,KC,varargin)
%Adams-Bashforth-Moulton method to solve vector d.e. y’(t) = f(t,y(t))
% for tspan = [t0,tf] and with the initial value y0 and N time steps
% using the modifier based on the error estimate depending on KC = 1/0
if nargin < 5, KC = 1; end %with modifier by default
if nargin < 4 | N <= 0, N = 100; end %default maximum number of iterations
y0 = y0(:)'; %make it a row vector
h = (tspan(2) - tspan(1))/N; %step size
tspan0 = tspan(1)+[0 3]*h;
[t,y] =ode_RK4(f,tspan0,y0,3); %initialize by Runge-Kutta
t = [t(1:3)' t(4):h:tspan(2)]';
for k = 1:4, F(k,:) = feval(f,t(k),y(k,:),varargin{:}); end
p = y(4,:); c = y(4,:); KC22 = KC*251/270; KC12 = KC*19/270;
h24 = h/24; h241 = h24*[1 -5 19 9]; h249 = h24*[-9 37 -59 55];
for k = 4:N
p1 = y(k,:) +h249*F; 
m1 = p1 + KC22*(c-p); 
c1 = y(k,:)+ ...
h241*[F(2:4,:); feval(f,t(k + 1),m1,varargin{:})]; 
y(k + 1,:) = c1 - KC12*(c1 - p1);
p = p1; c = c1; %update the predicted/corrected values
F = [F(2:4,:); feval(f,t(k + 1),y(k + 1,:),varargin{:})];
end