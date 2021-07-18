clear;
%p[X<3] = (3-0)/(10-0) = 3/10
%p[X>7] = (10-7)/(10-0) = 3/10
%p[1<X<6] = (6-1)/(10-0) = 5/10

N = 1e6;
x =  rand(1,N) * 10;

sucessos = sum(x<3);
p = sucessos/N;
disp("P[X<3] = " + p)

sucessos = sum(x>7);
p = sucessos/N;
disp("P[X>7] = " + p)

sucessos = sum(x>1 & x<6);
p = sucessos/N;
disp("P[1<X<6] = " + p)
