% la funcion toma un string de entrada y devuelve el numero binario
% equivalente en forma de vector

function bin = octal_binario(octal)

octal= fliplr(octal);
binario= [];
aux=0;

for i=0:(length(octal)-2)
switch octal(i+1)
    case '0'
        binario(3*i+1)= 0;
        binario(3*i+2)= 0;
        binario(3*i+3)= 0;
    case '1'
        binario(3*i+1)= 1;
        binario(3*i+2)= 0;
        binario(3*i+3)= 0;
    case '2'
        binario(3*i+1)= 0;
        binario(3*i+2)= 1;
        binario(3*i+3)= 0;
    case '3'
        binario(3*i+1)= 1;
        binario(3*i+2)= 1;
        binario(3*i+3)= 0;
    case '4'
        binario(3*i+1)= 0;
        binario(3*i+2)= 0;
        binario(3*i+3)= 1;
    case '5'
        binario(3*i+1)= 1;
        binario(3*i+2)= 0;
        binario(3*i+3)= 1;
    case '6'
        binario(3*i+1)= 0;
        binario(3*i+2)= 1;
        binario(3*i+3)= 1;
    case '7'
        binario(3*i+1)= 1;
        binario(3*i+2)= 1;
        binario(3*i+3)= 1;
    otherwise
        disp('valor invalido')
        binario= 0;
        aux=1;
        break
end
end

if aux==0
    
% previene errores cuando el numero binario es menor a 4 bits    
if length(octal)==1
  i= 0;
else
  i= i+1;
end

switch octal(i+1)
    case '1'
        binario(3*i+1)= 1;
    case '2'
        binario(3*i+1)= 0;
        binario(3*i+2)= 1;
    case '3'
        binario(3*i+1)= 1;
        binario(3*i+2)= 1;
    case '4'
        binario(3*i+1)= 0;
        binario(3*i+2)= 0;
        binario(3*i+3)= 1;
    case '5'
        binario(3*i+1)= 1;
        binario(3*i+2)= 0;
        binario(3*i+3)= 1;
    case '6'
        binario(3*i+1)= 0;
        binario(3*i+2)= 1;
        binario(3*i+3)= 1;
    case '7'
        binario(3*i+1)= 1;
        binario(3*i+2)= 1;
        binario(3*i+3)= 1;
    otherwise
        disp('valor invalido')
        binario= 0;
end
end

bin= binario;

end