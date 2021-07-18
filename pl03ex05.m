clear;

%%%Aviao com 2 motores:
%%probabilidade de falharem os 2 motores
%p(2) = Comb(2,2) * p^2 *(1-p)^0 = p^2
%%%Aviao com 4 motores:
%%probabilidade de falharem os 3 motores
%p(3) = Comb(3,4) * p^3 *(1-p)^1 = 4*p^3*(p-1)
%%probabilidade de falharem os 4 motores
%p(4) = Comb(4,4) * p^4 *(1-p)^0 = p^4
%%ptotal = p(x=3 ou x=4) =  4*p^3*(p-1)+p^4
%%relacao = 4motores/2motores = (4*p^3*(p-1)+p^4)/(p^2)

av2Mot= ones(1,100);
av4Mot = ones(1,100);
x=zeros(1,100);

for i= 1:100
 p=i/100;
 r = (4*p^3*(1-p) + p^4)/(p^2) ;
 x(1,i)=i;
 av2Mot(1,i) = p^2;
 av4Mot(1,i) = 4*p^3*(1-p) + p^4;
end

plot(av2Mot)
hold on
plot(av4Mot , '--')
legend({'2 Motores','4 Motores'},'Location','southeast')
xlabel('x')
ylabel('P[X=x]')
title('Probabilidade de Queda');