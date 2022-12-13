%% Experiment 8(a)  Quadratic Eqn From Roots
roots = [(-0.5+0.866i) (-0.5-0.866i)]
x = sym('x');
fprintf("The quadratic equation with roots %.4f and %.4f is: ", roots(1), roots(2));
eqn = expand(prod(x-roots))
%% Experiment 8(b) Evaluate Polynomial Product
syms s;
p1 = @(s)(s + 2);
p2 = @(s)(s^2 + 4*s + 8);
s1 = input('Enter a value of s ');
fprintf("Product of polynomials s + 2 and s^2 + 4s + 8 at s = %.2f is\n", x);
fprintf("%f\n", feval(p1, s1)*feval(p2, s1));

%% Experiment 8(c) Roots of Quadratic
a = input('Enter coefficient of x^2 ');
b = input('Enter coefficient of x ');
c = input('Enter coefficient of constant term ');
r1 = (-b + (b^2 - 4*a*c)^(1/2))/(2*a);
r2 = -(b + (b^2 - 4*a*c)^(1/2))/(2*a);
fprintf("Roots of the quadratic equation (%.4f)x^2 + (%.4f)x + (%.4f) are \n", a, b, c);
fprintf("(%.3f) + (%.3f)j, (%.3f) + (%.3f)j", real(r1), imag(r1), real(r2), imag(r2));