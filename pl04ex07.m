N = 1e4;
X = BoxMuller(N)
hist(X,100)

sigma2 = 2;
sigma = sqrt(sigma2);
media = 14;
y = X*sigma + media;
var(y)
hist(y,1000)