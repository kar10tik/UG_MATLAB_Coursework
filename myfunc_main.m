for n = 1:5
    x = n*0.1;
    z = myfunc1(x);
    fprintf('x = %4.2f  f(x) = %8.4f \r', x,z);
  end