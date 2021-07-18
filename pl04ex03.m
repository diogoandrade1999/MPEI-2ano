N = 10000;
p = 0.3;
hist(Bernoulli(p,N),(0:1))

n = hist(Bernoulli(p,N),(0:1)');
stem(0:1,n/N)
axis([-0.5 1.5 0 0.8])

figure();
mhist(Bernoulli(p,N))