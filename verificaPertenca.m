function r = verificaPertenca(B,elem,k)
  n = length(B);
  key = elem;
  r = true;
  
  for i=1:k
    %aplicar hf(i)
    key = [key num2str(i)];
    pos = string2hash(key);
    pos = rem(pos,n)+1;
    
    %fprintf(1,'key=%s-pos=%d\n',key,pos);
    
    if B(pos) == 0
      r=false;
      break
    end
  endfor
end