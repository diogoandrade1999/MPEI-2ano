N= 1e5;
p = 0.5;
k = 1;
n = 2;
filhos = rand(n,N) > p;
rapazes = sum(filhos)>k;
probRapaz = sum(rapazes)/N