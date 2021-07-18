%rand()*gama+min  //gama=max-min
%% alinea a
p = 0.5;
a = rand(1,10) < p;
hist(a,0:1)
%% alinea b
b = floor(rand(1,15)*6)+1;
figure();
hist(b)
%% alinea c
c = rand(1,20)*14-4;
figure();
hist(c)