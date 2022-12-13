% Matrix Multiplication
function [C] = matrix_multiply(A,B,n)
 	C = zeros(n,n);
    for i = 1:n
        for j = 1:n
            for k = 1:n
                C(i,j) = C(i,j) + A(i,k)*B(k,j);
            end
        end
    end
end