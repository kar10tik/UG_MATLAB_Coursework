x = 0:5;
y = [15, 10, 9, 6, 2, 0];
% polyfit(x,y,1);
smooth_x = 0:0.2:5;
y4 = polyval(polyfit(x,y,4),smooth_x);
disp('smooth_x     y4')
for smooth_x = 0:0.2:5
    y4 = polyval(polyfit(x,y,4),smooth_x);
    fprintf('%f    %f\n',smooth_x,y4)
end
y5 = polyval(polyfit(x,y,5),smooth_x);
disp('smooth_x     y5')
for smooth_x = 0:0.2:5
    y5 = polyval(polyfit(x,y,5),smooth_x);
    fprintf('%f    %f\n',smooth_x,y5)
end
j=1;
for i = 0:0.2:5
   s_x(j) = i;
   y4(j) = polyval(polyfit(x,y,4),i);
   j = j + 1;
%  fprintf('%f    %f\n',s_x,y4)
end
k=1;
for i = 0:0.2:5
    s_x(k)=i;
    y5(k) = polyval(polyfit(x,y,5),i);
%   fprintf('%f    %f\n',smooth_x,y5)
    k = k + 1;
end
figure(1);
subplot(2,1,1), plot(x,y,'o');
hold on;
plot(s_x,y4,'g-');
axis([0,5,-5,15])
xlabel('x');
ylabel('fourth order polyfit');
subplot(2,1,2), plot(s_x,y5,'m:');
hold on;
plot(x,y,'o');
xlabel('x');
ylabel('fifth order polyfit');
axis([0,5,-5,15]);
set(gcf,'color','w');
figure(2)
plot(x,y,'o');
hold on;
plot(s_x,y4,'g-');
axis([0,5,-5,15])
hold on;
plot(s_x,y5,'m:');
xlabel('x');
ylabel('polyfits');
set(gcf,'color','w');
legend('actual','fourth order','fifth order');