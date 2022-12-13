close all;
clear all;
clc;
x = 0:5;
%y = [15, 10, 9, 6, 2, 0];
y = [15, 8, 9, 6, 2, 0];
plot(x,y)
set(gcf,'color','w');
a = polyfit(x,y,1)
a1 = polyval(a,x)
hold on;
plot(x,a1,'g-.')
b = polyfit(x,y,2)
b1 = polyval(b,x)
hold on;
plot(x,b1,'r:')
xlabel('x');
ylabel('polyfits')
c = polyfit(x,y,3)
c1 = polyval(c,x)
hold on;
plot(x,c1,'k--')
d = polyfit(x,y,4)
d1 = polyval(d,x)
hold on;
plot(x,d1,'m--')
legend('actual','linear','quadratic','cubic','fourth order')