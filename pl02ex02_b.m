N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de cara
k = 10; %n´umero de caras
n = 11; %n´umero de lanc¸amentos
lancamentos = rand(n,N) > p;
caras= sum(lancamentos(1:10,:))==k;
sucessos= sum(lancamentos)>k;
probSimulacao= sum(sucessos)/sum(caras)