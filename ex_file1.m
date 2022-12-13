close; clear; clc;
fID10 = fopen('myoutput10.txt','w');
for n = 1:4
    b1 = n ; b2 = n^2 ; b3 = n^3;
    fprintf(fID10, '%7u\t%7u\t%7u\n',b1,b2,b3);
end
fclose(fID10);