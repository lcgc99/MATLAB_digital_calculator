% la funcion toma un string de entrada y arroja el numero binario
% equivalente en forma de vector

function bin = hexadecimal_binario(hexadecimal)

hexadecimal= fliplr(hexadecimal);
binario= [];
aux= 0;

for i=0:(length(hexadecimal)-2)
switch hexadecimal(i+1)
    case '0'
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 0;
    case '1'
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 0;
    case '2'
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 0;
    case '3'
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 0;
    case '4'
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 0;
    case '5'
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 0;
    case '6'
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 0;
    case '7'
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 0;
    case '8'
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case '9'
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'a', 'A'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'B', 'b'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'C', 'c'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'D', 'd'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'E', 'e'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'F','f'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    otherwise
        disp('valor invalido')
        binario= 0;
        aux= 1;
        break
end
end

if aux==0
   
% previene errores cuando el numero binario es menor a 4 bits    
if length(hexadecimal)==1
  i= 0;
else
  i= i+1;
end

switch hexadecimal(i+1)
    case '1'
        binario(4*i+1)= 1;
    case '2'
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
    case '3'
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
    case '4'
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
    case '5'
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
    case '6'
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
    case '7'
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
    case '8'
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case '9'
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'a', 'A'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'B', 'b'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 0;
        binario(4*i+4)= 1;
    case {'C', 'c'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'D', 'd'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 0;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'E', 'e'}
        binario(4*i+1)= 0;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    case {'F','f'}
        binario(4*i+1)= 1;
        binario(4*i+2)= 1;
        binario(4*i+3)= 1;
        binario(4*i+4)= 1;
    otherwise
        disp('valor invalido')
        binario= 0;
end
end

bin= binario;

end