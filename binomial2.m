function y = binomial2(p,n,N)

    Bern = rand(n,N) < p;
    y = sum(Bern);

end