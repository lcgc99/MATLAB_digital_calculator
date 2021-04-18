% la funcion toma el vector resultado que arrojan las funciones
% operacionales y arroja un string con la equivalencia en el sistema
% octal

function decimal = binario_decimal(binario)

const= floor(length(binario)/4);
out= 0;

for i=1:(length(binario))
    out= out + 2^(i-1)*binario(i);
end
 
decimal= fliplr(out);

end