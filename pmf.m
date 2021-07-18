function y = pmf(xi,pX,N)
    y = zeros(1,N);
    
    for j=1:N
       U = rand();
       i = 1 + sum(U > cumsum(pX));
       y(j) = xi(i);
    end
end