clear all;
clc;
close all;
x = linspace(0,pi/2,10);
x1 = linspace(0,pi/2,20);
y = sin(x);
y1 = sin(x1);
dydx_anal = cos(x);
dydx1_anal = cos(x1);
dydx_approx = diff(y)./diff(x);
dydx1_approx = diff(y1)./diff(x1);
dydx_approx(length(x)) = NaN;
dydx1_approx(length(x1)) = NaN;
error = (dydx_anal-dydx_approx)./dydx_anal;
error1 = (dydx1_anal-dydx1_approx)./dydx1_anal;
per_error = error *100;
per_error1 = error1 *100;
figure(1);
plot(x,dydx_anal,'k-');
hold on;
plot(x,dydx_approx,'go-.');
hold on;
plot(x1,dydx1_approx,'rs:');
title('derivative of sin(x) using forward difference technique');
xlabel('angle, radians')
ylabel('dydx')
legend('analytical','forward approx with 10 pts','forward approx with 20 pts')
set(gcf,'color','w');
figure(2)
plot(x,per_error,'go-')
hold on;
plot(x1,per_error1,'rs:');
set(gcf,'color','w');
xlabel('angle, radians')
ylabel('error in %')
legend('error with 10 pts','error with 20 pts')
figure(3)
subplot(1,2,1)
plot(x,dydx_anal,'k-');
hold on;
plot(x,dydx_approx,'go-.');
hold on;
plot(x1,dydx1_approx,'rs:');
title('derivative of sin(x) using forward difference technique');
xlabel('angle, radians')
ylabel('dydx')
legend('analytical','forward approx with 10 pts','forward approx with 20 pts')
set(gcf,'color','w');
subplot(1,2,2)
plot(x,per_error,'go-')
hold on;
plot(x1,per_error1,'rs:');
set(gcf,'color','w');
xlabel('angle, radians')
ylabel('error in %')
legend('error with 10 pts','error with 20 pts')
subplot(2,1,1);
plot(x, dydx_anal, 'k-', x, dydx_approx, 'go-')
subplot(2,1,2);
plot(x1, dydx1_anal, 'k-', x1, dydx1_approx, 'go-')

%figure(4);
%subplot(2,1,1)
%plot(x,dydx_anal,'k-',x,dydx_approx,'go-.'); 
%xlabel('angle, radians')
%ylabel('forward difference')
%legend('analytical','forward approx with 10 pts')
%subplot(2,1,2)
%plot(x,dydx_anal,'k-');
%hold on;
%plot(x1,dydx1_approx,'rs:');
%xlabel('angle, radians')
%ylabel('forward difference')
%legend('analytical','forward approx with 20 pts')
%set(gcf,'color','w');