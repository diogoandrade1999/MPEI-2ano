a = 16807;
c = 137;
m = 2.1475e9;
N = 100000;
y = lcg(100,a,c,m,N);

hist(y)

length(unique(y))

%%alinea b
y1 = y/m;

figure();
subplot(121)
hist(y1,200),title('lcg()')
subplot(122)
hist(rand(1,N),200),title('rand()')

%%alinea c
a = 13^13;
c = 137;
m = 2^59;

y = lcg(100,a,c,m,100000);
length(unique(y))
figure();
hist(y)