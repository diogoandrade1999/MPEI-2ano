clear;

%Sa = [1 : 100];  n*p=1<=>p=1/n=1/100
%Espaço de amostragem = [ 5 5 5 5 5 5 5 5 ... 50 50 50 ... 100]
tNotas=90+9+1;
pNota=1/tNotas;
disp("Probabilidade de sair qualquer nota é " + pNota)

Px = [90/100 9/100 1/100];
x = [5 50 100];
stem(x,Px)
xlabel('Nota')
ylabel('Probabilidade de sair a face X')
title('Massa de Probabilidade')
axis([0 105 0 1])

%Px2 = [0 0 Px 0 0];
%x2 = [-20 -10 5 50 100 110 120];
%y = cumsum(Px2);
%figure();
%stairs(x2,y)
%xlabel('Nota')
%ylabel('Probabilidade acumulada')
%title('Distribuição Acumulada')