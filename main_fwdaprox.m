close all;
clear all;
clc;
f=inline('exp(-x)','x');
N = 5; xo = 0;
x=0:5;
%Numerical computation method
for j=1:3
    T(1,j) = feval(f,xo);
    for i=2:N+1
        T(i,j)=0;
    end
end
h =[0.005  0.001 0.0005] %.01 or 0.001 make it worse
tmp = [1 1 1];
for i=11
    c=zeros(i,i);
end
% difapx.m to get the difference approximation for the Nth derivative

for j=1:3
    for i = 1:N
tmp(j) = tmp(j)*i*h(j); %i!(factorial i)*h^i
c = difapx(i,[-i i]); %coefficient of numerical derivative
dix(j) = c*feval(f,xo + [-i:i]*h(j))'; %/h^i; %derivative
T(i+1,j) = dix(j)./tmp(j); %Taylor series coefficient
    end
end
plot(x,exp(-x),'k-',x,T(:,1),'m:',x,T(:,2),'g-.',x,T(:,3),'b-.')
axis([0 5 -1 1.2])  
set(gcf,'color','w');
legend('analytical','h=0.005','h=0.001','h=0.0005')

% Column 1
%
%        1      
%  -240001/240000
%        1/2    
%       -1/6    
%     5748/137951
%     -206/24711

% Column 2
%
%        1       A
%    -2401/2400  
%        1/2    
%       -1/6    
%        1/24    
%       -1/120  


% format rat,  %descending order
% %Symbolic computation method
 syms x;
N=5;
    Ts = sym2poly(taylor(exp(-x),'order',N + 1))
Tn = fliplr(Ts)
% %discrepancy
% format short, discrepancy=norm(Tn - Ts)