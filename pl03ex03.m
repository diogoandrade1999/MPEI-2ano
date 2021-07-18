clear;

N= 1e6; %numero de experiencias
p = 0.5; %probabilidade de coroa
n = 4; %numero de lancamentos

e = rand(n,N) > p;
x = [0 : n];
Px = zeros(size(x));

for i=1:length(x)
    Px(i)= sum(sum(e)==x(i))/N;
end

stem(x,Px)
xlabel('x')
ylabel('P[X=x]')
title('Probabilidade')
axis([min(x)-0.5 max(x)+0.5 0 max(Px)*1.1])

%%alinea b
Ex = x * Px';
Ex2 = x.^2 * Px';
Var = Ex2-Ex^2; %E[x^2]-(E[x])^2
desvp = sqrt(Var);
disp("Valor esperado é " + Ex)
disp("Variancia é " + Var)
disp("Desvio Padrão é " + desvp)

%%alinea c
%Distribuicao binomial (discreta)-->funcao binomial.m

%%alinea d
prob = [binomial(p,n,0) binomial(p,n,1) binomial(p,n,2) binomial(p,n,3) binomial(p,n,4)];

%%alinea e
pPeloMenosde2_a = 1 - (prob(1,1) + prob(1,2));
pPeloMenosde2_b = sum(prob(x>=2));
pAte1Coroa_a = prob(1,1)+prob(1,2);
pAte1Coroa_b = sum(prob(x<=1));
pEntre1e2_a =  prob(1,2) + prob(1,3) + prob(1,4);
pEntre1e2_b = sum(prob(x>=1  & x<=3));
disp("Probabilidade de pelo menos 2 coroas é " + pPeloMenosde2_a + " \ " + pPeloMenosde2_b)
disp("Probabilidade de obter ateé 1 coroa é " + pAte1Coroa_a + " \ " + pAte1Coroa_b)
disp("Probabilidade de obter entre 1 e 3 coroas é " + pEntre1e2_a + " \ " + pEntre1e2_b)