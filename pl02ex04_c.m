figure(2)
clf
N = 1e4;

ms = [1e3 1e4 1e5 1e6];
ns = 1:10:100;

for g=1:4
    ms(g);
    subplot(2,2,g)
    probs=0*ns;
    for i=1:length(ns)
        [p1 probs(i)]=dardos(ns(i),ms(g),N);
    end
    
    plot(ns(1:i),probs(1:i),'r.');
    xlabel('n'), ylabel('prob'), title(['m=' num2str(ms(g))])
end