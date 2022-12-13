% Comparison of Numerical Integration Methods 
% Trapezoidal, Simpson's, and Romberg's Methods
clc; clear all; close;
x = -5:5;
f = inline('400*x.*(1 - x).*exp(-2*x)','x');
a = 0; b = 4; N = 80;
format short e;
true_I = 3200 * exp(-8);
tic, It = trpzds(f,a,b,N), errt = It - true_I, trp_time = toc %trapezoidal
% It = 9.9071e-001, errt = -8.2775e-002
tic, Is = smpsns(f,a,b,N), errs = Is-true_I, smp_time = toc %Simpson
% INTfs = 1.0731e+000, error = -3.3223e-004
tic, [IR,R,err,N1] = rmbrg(f,a,b,.0005), errR = IR - true_I, rmb_time = toc %Romberg
% INTfr = 1.0734e+000, N1 = 32;
% error = -3.4943e-005;