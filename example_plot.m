% Example Program
close; clear; clc;
i = 1;
x = 0.01:0.01:2;
y = 400.*x.*(1-x).*exp(-2.*x);
%for x = 0.01:0.01:2
%y(i) = 400.*x.*(1-x).*exp(-2.*x);
%i = i+1;
%end
plot(x, y);