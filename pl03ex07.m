clear;

k = 0;
a = 15;
p = poisson(a,k);
disp("Probabilidade de n�o chegarem mensagens � " + p)

%%Alinea b
sum = 0;

for k=0:10
    sum = sum + poisson(a,k);
end

p10Mais =  1 - sum;
disp("Probabilidade de chegarem mais de 10 mensagens � " + p10Mais)