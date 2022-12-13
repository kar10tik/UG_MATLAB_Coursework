clear;
clc;
close all;
x = linspace(0,pi/2,10);
y = sin(x);
n = length(x);
dydx_anal = cos(x);
dydx_approxb = diff(y)./diff(x);
dydx_approxb = [NaN,dydx_approxb];
errorb = (dydx_anal - dydx_approxb)./dydx_anal ;
per_errorb = errorb * 100;
dydx_approxf = diff(y)./diff(x);
dydx_approxf(length(x)) = NaN;
errorf = (dydx_anal-dydx_approxf)./dydx_anal;
per_errorf = errorf *100;
d2 = (y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));
figure(1)
plot(x,dydx_anal,'k-');
hold on;
plot(x,dydx_approxb,'mo-.');
hold on;
plot(x,dydx_approxf,'rs:');
hold on;
plot(x(2:n-1),d2,'gd--')
title('derivative of sin(x) using forward, backward and central difference technique');
xlabel('angle, radians')
ylabel('dydx')
legend('analytical','backward difference','forward difference','central difference');
set(gcf,'color','w');
d2_for_error=[NaN,d2,NaN];
errorc = (dydx_anal-d2_for_error)./dydx_anal;
per_errorc = errorc * 100;
figure(2)
plot(x(2:9),errorf(2:9),'rs:',x(2:9),errorb(2:9),'mo-',x(2:9),errorc(2:9),'gd--');
xlabel('angle, radians')
ylabel('error ')
legend('forward difference','backward difference','central difference');
set(gcf,'color','w');
grid on;
% figure(3)
% plot(x(2:9),per_errorf(2:9),'rs:',x(2:9),per_errorb(2:9),'mo-',x(2:9),per_errorc(2:9),'gd--');
%  xlabel('angle, radians')
%   ylabel('error in %')
%   legend('forward difference','backward difference','central difference');
%   set(gcf,'color','w');
% grid on;
figure(3)
subplot(1,2,1)
plot(x,dydx_anal,'k-');
hold on;
plot(x,dydx_approxb,'mo-.');
hold on;
plot(x,dydx_approxf,'rs:');
hold on;
plot(x(2:n-1),d2,'gd--')
title('derivative of sin(x) using forward, backward and central difference technique');
xlabel('angle, radians')
ylabel('dydx')
legend('analytical','backward difference','forward difference','central difference');
set(gcf,'color','w');
subplot(1,2,2)
plot(x(2:9),errorf(2:9),'rs:',x(2:9),errorb(2:9),'mo-',x(2:9),errorc(2:9),'gd--');
xlabel('angle, radians')
ylabel('error ')
legend('forward difference','backward difference','central difference');
set(gcf,'color','w');
grid on;
table = [];
disp('All Difference Approximation of the derivative of sin(x)');
disp('   x        %forward       %central        %backward');
fprintf('%8.4f\t%8.4f\t%8.4f\t%8.4f\n',x, errorf*100, errorc*100, errorb*100);
fprintf('%8.4f\t%8.4f\t%8.4f\t%8.4f\n',table);