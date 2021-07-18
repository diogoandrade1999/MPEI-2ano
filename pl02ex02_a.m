N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de cara
k = 10; %n´umero de caras
n = 10; %n´umero de lanc¸amentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N