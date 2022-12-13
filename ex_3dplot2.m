close all;
clear all;
clc
[t,a] = meshgrid(0.1:0.01:2, 0.1:0.5:7);
f=2;
Z = 10.*exp(-a.*0.4).*sin(2*pi.*t.*f);
[x, y, z] = cylinder;
surf(Z);
figure(2);
mesh(z);
surf(x,y,z);