N=1e6;
p=0.5;
n=20;

prob=zeros(1,n+1);

for k=0:n
    prob(k+1)=calcp(p,k,n,N);
    
    fprintf(1,'P(%d sucessos em %d lancamentos)=%.4f\n',k,n,prob(k+1))
    
end

prob;

stem(0:n,prob)