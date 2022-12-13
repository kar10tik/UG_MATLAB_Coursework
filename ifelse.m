close all;
clear all;
% the value of x equal to minimum value will only be displayed. 
% if x has some other value nothing will be displayed. 
x = input('enter the number x ');
minVal = 2; 
maxVal = 6; 
if x == minVal
  printf('minimum value = %d', x) 
else 
  disp('Not min')
end

close all;
clear all;
x = 10; 
minVal = 2; 
maxVal = 6; 
  if (x >= minVal) && (x <= maxVal) 
 		disp('Value within specified range.') 
	else 
		disp('Value is not in the range')
	end
close all;
clear all;
x = 10; 
minVal = 2; 
maxVal = 6; 
if (x >= minVal) && (x <= maxVal) 
  disp('Value within specified range.') 
elseif (x > maxVal) 
  disp('Value exceeds maximum value.') 
else 
  disp('Value is below minimum value.') 
end