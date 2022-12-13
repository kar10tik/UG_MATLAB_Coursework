% Program to find the next prime number
% this is a function
% you will have to type k=next_prime(5) on the command window.
% then the answer will be returned.
% this program is always stored by the name of the function, here in this
% case next_prime.m
function k=next_prime(n)
if (~isscalar(n) || n < 1 || n ~= fix(n) || any(rem(n,1)))
    return
end

k = n + 1;
% fprintf('k is %d\n',k);

while isprime(k) == 0
   k = k + 1;
end
end