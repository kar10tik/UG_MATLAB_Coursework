for i = 1:1:5
  fprintf('number is = %d\n', i);
  x = i * i;
end

x = 1;
while x <=4
  fprintf('value of x is %d\n', x);
  x *= 3
endwhile

a = 10;
% while loop execution 
while (a < 20 )
   fprintf('value of a: %d\n', a);
   a = a + 1;
   if( a > 15)
      % terminate the loop using break statement 
      break;
   end 
end

% example of continue statement
for n=1:10
  if rem(n,2)==0
    continue 
  end
  disp(n)
end