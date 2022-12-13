% Factorial calculation
function res = factorial(n)
    if (n == 0 || n == 1)
        res = 1;
        return;
    end
    
    res = n * factorial(n-1);
    
end