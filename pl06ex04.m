kmax = 10;

for k=1:kmax

  tic

  m = 1000;
  n = 8*m;
  k = 3;

  B = inicializar(n);

  strs1 = cell(1,1000);
  strs2 = cell(1,1000);

  h = waitbar(0,'TESTANDO...');

  for i=1:1000
    string = randomString(40,40);
    strs1{i} = string;
    B = inserir(B,string,k);
    
    waitbar(i/1000,h);
  end

  stem(B);
  delete(h);

  fp = 0;
  h = waitbar(0,'TESTANDO...');

  for i=1:10000
    string = randomString(40,40);
    strs2{i} = string;
    r = verificaPertenca(B,string,k);
    
    if r == 1
      fp = fp+1; %falso positivo
    end
    
    waitbar(i/10000,h);
  end

  delete(h);

  intersect(strs1,strs2);
  fps(k)=fp;

  toc

end

plot(1:kmax,fps,'*:');