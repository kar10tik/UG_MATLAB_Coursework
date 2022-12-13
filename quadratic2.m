function [x1, x2] = quadratic2(a, b, c) 
    d = disc(a,b,c); 
        function disc 
            d = sqrt(b^2 - 4*a*c);
        end
	x1 = (-b + d) / (2*a); 
	x2 = (-b - d) / (2*a); 
end 