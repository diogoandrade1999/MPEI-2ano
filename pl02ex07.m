faces = 5;
nLancamentos = 2;
N=1e6;

e=randi([1,faces],nLancamentos,N);

%%evento A "soma == 10"
kA = sum(sum(e)==10);
pA = kA/N;
fprintf(1,'A simul = %.4f, teórico = %.4f\n',pA,1/25);

%%evento B "pelo menos 1 cinco"
kB = sum(sum(e==5)>0);
pB = kB/N;

fprintf(1,'B simul = %.4f, teórico = %.4f\n',pB,9/25);

%%
cA = sum(e)==10;
cB = sum(e==5)>0;

cAB =  cA & cB;
%cAB = (sum(e)==10)&(sum(e==5)>0);

kAB = sum(cAB);
pAB = kAB/N