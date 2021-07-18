function hash = string2hash(string,type)
  string=double(string);
  if(nargin<2), type='djb2'; end
  switch(type)
    case 'djb2'
        hash = 5381*ones(size(string,1),1); 
        for i=1:size(string,2), 
            hash = mod(hash * 33 + string(:,i), 2^32-1); 
        end
    case 'sdbm'
        hash = zeros(size(string,1),1);
        for i=1:size(string,2), 
            hash = mod(hash * 65599 + string(:,i), 2^32-1);
        end
    otherwise
        error('string_hash:inputs','unknown type');
end