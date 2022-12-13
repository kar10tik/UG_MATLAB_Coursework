clear; close; clc;
f = inline('400*x.*(1-x).*exp(-2*x)', 'x');
a = 0; b = 4; N = 80;
format short e;
true_l = 3200*exp(-8);
lt = trpzds();
