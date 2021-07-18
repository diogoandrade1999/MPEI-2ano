function r = verificaPertencaCountFilter(B,elem,k)
  n = length(B);
  key = elem;
  r = 0;
  
  for i=1:k
    %aplicar hf(i)
    key = [key num2str(i)];
    pos = string2hash(key);
    pos = rem(pos,n)+1;
    
    %fprintf(1,'key=%s-pos=%d\n',key,pos);
    
    if B(pos) != 0
      r = B(pos);
      break
    end
  endfor
end