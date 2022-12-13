close; clear; clc;
a = 1; r = 1; y0 = 0; tf = 2;
t = [0:0.01:tf];
yt = 1-exp(-a*t);
klasts = [8 4 2];
hs = tf./klasts;

for itr = 1:3 %with various step size h = 1/8,1/4,1/2
    klast = klasts(itr);
    h = hs(itr);
    y(itr,1) = y0;
    klast = klasts(itr);
    h = hs(itr); y(1)=y0;
    for k = 1:klast
        y(itr,k + 1) = (1 - a*h)*y(itr,k) +h*r;
    end
end

t1 = 0:0.25:2;
t2 = 0:0.5:2;
t3 = 0:2;
plot(t,yt,'k');
hold on;
plot(t1,y(1,:),'ro:',t2,y(2,1:5),'b*:',t3,y(3,1:3),'gs:');
legend('true analytical solution','hs=0.25','hs=0.5','hs=1', 'Location', 'best');
set(gcf,'color','w');