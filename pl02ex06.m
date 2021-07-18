%prod(100:-1.100-n+1)/100^n -> teorica

p = zeros(1,100);

for n=1:100
    n
    [x p(n)] = dardos(n,365,1e5);
end
plot(1:100,p,'bd');