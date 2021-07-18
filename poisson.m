function p = poisson(a,k)
	p = ((a.^k)/factorial(k)).*exp(-a);
end