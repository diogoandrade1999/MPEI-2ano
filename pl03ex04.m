clear;

p = 0.3;
n = 5;
Px = zeros(1,n);

for i=1:n
    Px(1,i)= binomial(p,n,i);
end

hist(Px)
xlabel('x')
ylabel('P[X=x]')
title('Distribui��o da probabilidade')

%%alinea b
pMax = 1 - (Px(1,4) + Px(1,5));
disp("Probabilidade de no m�ximo 2 pe�as serem defeituosas � " + pMax)