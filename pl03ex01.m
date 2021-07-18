clear;

x = [1 : 6];
Px = ones(1,6)/6;

stem(x, Px)
xlabel('Face')
ylabel('Probabilidade de sair a face X')
title('Massa de Probabilidade')
axis([0 6.5 0 (1/6)*1.2])

Px2 = [0 0 Px 0 0];
x2 = [-1 : 8];
y = cumsum(Px2);

figure();
stairs(x2,y)
xlabel('Face')
ylabel('Probabilidade acumulada')
title('Distribuição Acumulada')