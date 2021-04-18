% la funcion indica el mayor entre dos vectores binarios de igual longitud

function comp = comparador(a, b)

a= fliplr(a);
b= fliplr(b);
out= ' ';

for i=1:length(a)
    if a(i) ~= b(i)
        if a(i) == 1
          out= 'a mayor que b';    
        elseif b(i) == 1
          out= 'b mayor que a';  
        end
        break
    end
end

comp= out;

end