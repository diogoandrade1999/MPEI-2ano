n = 300000;
k = 3;
added = 0;
i = 0;
diffWords = 0;

printf("\nInitializar boom...\n");
fic1 = "gutemberg1.txt";
fic2 = "gutemberg2.txt";
bloom = inicializar(n);

printf("\nAdicionar strings ao boom...\n");
ficheiro1 = fopen(fic1);

while 1
  linha = fgetl(ficheiro1);
  if linha == -1
    break
  end
  remain = linha;
  while length(remain) > 0
    [elem,remain] = strtok(remain, ' ,;.-');
    if strcmp(remain,"não")==1
      printf("não => %d", i);
    end
    bloom = inserir(bloom,elem,k);
   end
end
fclose(ficheiro1);

printf("\nVerificando stringd no boom...\n");
printf("\nPalavras não existentes no ficheiro 1:\n");
ficheiro2 = fopen(fic2);

while 1
  linha = fgetl(ficheiro2);
  if linha == -1
    break
  end
  remain = linha;
  while length(remain) > 0
    [elem,remain] = strtok(remain, ' ,;.-');
    if strcmp(remain,"não")==1
      printf("não => %d", i);
    end
    if(verificaPertenca(bloom,elem,k) == 0)
      printf("%s\n", token);
      diffWords++;
    end
   end
end
fclose(ficheiro2);