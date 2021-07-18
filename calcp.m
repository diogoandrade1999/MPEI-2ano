function pSimul = calcp(p,k,n,N)
% Calc prob de k sucessos em n experiencias por simulação (N repetições)

experiencias = rand(n,N);
lancamentos = experiencias > p;
resultados= sum(lancamentos);
sucessos= resultados==k;

pSimul= sum(sucessos)/N;

end