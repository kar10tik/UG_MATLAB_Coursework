% Numerically approximate backward differences
clear; clc; close;
x = linspace(0,pi/2,10);
y = sin(x);
dydx_analb = cos(x); %d_back_exact
dydx_approxb = diff(y)./diff(x);
dydx_approxb = [NaN,dydx_approxb];
error_perc_b = (dydx_analb - dydx_approxb)./dydx_analb * 100;
table = [];
disp('Backward Difference Approximation of the derivative of sin(x)')
disp('   x        dy/dx       dy/dx         %error')
disp('            cos(x)    backward approximation')
fprintf('%8.4f\t%8.4f\t%8.4f\t%8.4f\n',x, dydx_analb,dydx_approxb,error_perc_b);
fprintf('%8.4f\t%8.4f\t%8.4f\t%8.4f\n',table);
plot(x,dydx_analb,'gv-',x,dydx_approxb,'rs:');
xlabel('x');
ylabel('dydx');
legend('dydx analytical','dydx approximation');
set(gcf,'color','w');