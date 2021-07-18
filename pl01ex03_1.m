%% Código 3
p = 0.5;
%k = 6;
n = 15;
prob = 0;

for K=6:n
    prob= prob+factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end

prob