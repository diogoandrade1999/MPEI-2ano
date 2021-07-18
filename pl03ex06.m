clear;

x = [1 : 14];
a = 8;          %P=1/1000  ==>8000 --> 8
p = zeros(size(x));

for k=1:length(x)
    p(k) = ((a.^k)/factorial(k)).*exp(-a);
end

stem(x,p)
xlabel('k')
ylabel('Pk')
title('Probabilidade');
disp("Probabilidade de haver 7 defeituosos é " + p(7))