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
    disp("Fun��o representativa de probabilidade de uma vari�vel aleat�ria.")
else
    disp("N�o � uma fun��o representativa de probabilidade de uma vari�vel aleat�ria.")
end