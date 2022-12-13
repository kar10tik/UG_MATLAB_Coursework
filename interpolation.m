x = 0:5;
y = [15, 10, 9, 6,2,0];
z = interp1(x,y,3.5,'linear')
new_x = 0:0.2:5;
new_y = interp1(x,y,new_x)
subplot(1,2,1), plot(x,y,'k-');
subplot(1,2,2),plot(new_x,new_y,'mv:');
z1 = interp1(new_x,new_y,3.5,'spline')
new_y_spline = interp1(x,y,new_x,'spline');
plot(x,y,'k*:',new_x,new_y_spline,'-go')
set(gcf,'color','w');
x1=[2, 4, 7, 9, 11, 16];
y1=[15, 10, 9, 6,2,0];
z2=interp1(x1,y1,3.5,'spline')

disp('new_x        new_y        new_y_spline')
for new_x=0:0.2:5
  new_y=interp1(x,y,new_x);
  new_y_spline = interp1(x,y,new_x,'spline'); 
  fprintf('%f         %f          %f\n',new_x, new_y, new_y_spline);
end