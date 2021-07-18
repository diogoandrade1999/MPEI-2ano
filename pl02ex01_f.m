N= 1e5;
p = 0.5;
k = 1;
n = 5;
filhos = rand(n,N) > p;
rapaz = sum(filhos)>=k;
doisrapazes = sum(filhos)>=2;
probRapaz = sum(doisrapazes)/sum(rapaz)