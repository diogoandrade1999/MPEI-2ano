clear;

media=14;
desvio=2;
var=desvio^2;
N=1e6;
x = randn(1,N)*desvio + media;

sucessos = sum(x >12 & x <16);
p = sucessos/ N;
disp("P[12<X<16] = " + p)

sucessos = sum(x >10 & x <18);
p = sucessos/ N;
disp("P[10<X<18] = " + p)

sucessos = sum(x >=10);
p = sucessos/ N;
disp("P[X>=10] = " + p)