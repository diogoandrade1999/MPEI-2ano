function [p1, p2] = dardos(n,m,N)

alvos = randi([1,m],[n,N]);

diferentes=zeros(1,N);
for col=1:size(alvos,2)
    diferentes(col)=length(unique(alvos(:,col)));
end

p1 = sum(diferentes==n)/N;
p2 = 1-p1;

end