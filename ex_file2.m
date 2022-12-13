%% section 1
close; clear; clc;
fID1 = fopen('myoutput3.txt','w');
for n = 1:4
b1 = n ; b2 = n^2 ; b3 = n^3;
fprintf(fID1,'%7u %7u %7u \n',b1,b2,b3)
end
fclose(fID1);
fID2 = fopen('myoutput3.txt','r');
for n = 1:4
b = fscanf(fID2,'%7u %7u %7u \r',3);
btotal=b(1)+b(2)+b(3);
fprintf('%7u + %7u + %7u = %7u \r', b(1), b(2), b(3),btotal)
end
fclose(fID2);
fID3 = fopen('myoutput3.txt','r');
for n = 1:4
b = fscanf(fID3,'%7u %7u %7u \r',3);
fprintf('%7u  %7u  %7u   \r', b(1), b(2), b(3))
end
fclose(fID3);

%% section 2
close; clear; clc;
fID1 = fopen('myoutput4.txt','w');
for n = 1:4
b1 = n ; b2 = 2*n ; b3 = 3*n;
fprintf(fID1,'%7u\t%7u\t%7u\n',b1,b2,b3);
end
fclose(fID1);
fID3 = fopen('myoutput4.txt','r');
for n = 1:4
b = fscanf(fID3,'%7u %7u %7u \r',3);
fprintf('%7u  %7u  %7u   \r', b(1), b(2), b(3))
end
fclose(fID3);