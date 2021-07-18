function mhist(v)

v = double(v);
[n x] = hist(v, min(v):max(v));

stem(x,n/sum(n))

axis([min(x)-0.5 max(x)+0.5 0 1])