m = 4;
n = 8*m;
k = 5;
Paises = {'Portugal','Espanha','França','Itália'};
Paises = {'Portugal','Espanha','França','Itália','Inglaterra'};

B = inicializar(n);

for i=1:length(Paises)
  B = inserir(B,Paises{i},k);
end

stem(B);

fn = 0;
for i=1:length(Paises)
  r = verificaPertenca(B,Paises{i},k);
  
  if r == 0
    fn = fn+1; %falso negativo
  end
end

fn