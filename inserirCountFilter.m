function B = inserirCountFilter(B,elem,k)
  n = length(B);
  key = elem;
  
  for i=1:k
    %aplicar hf(i)
    key = [key num2str(i)];
    pos = string2hash(key);
    pos = rem(pos,n)+1;
    
    %fprintf(1,'key=%s-pos=%d\n',key,pos);
    
    B(pos)+=1;
  endfor
end