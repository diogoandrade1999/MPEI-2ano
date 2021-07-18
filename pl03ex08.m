clear;

x = [1 : 4];
f = zeros(size(x));

for i=1:length(x)
   f(i) = (i+5)/30; 
end

stem(x,f)
xlabel('x')
ylabel('P[X=x]')
title('Probabilidade')
axis([0 4.5 0 0.35])

if sum(f) == 1
    disp("Função representativa de probabilidade de uma variável aleatória.")
else
    disp("Não é uma função representativa de probabilidade de uma variável aleatória.")
end