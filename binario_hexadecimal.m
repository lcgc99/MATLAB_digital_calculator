% la funcion strcat concatena strings horizontalmente

% la funcion toma el vector resultado que arrojan las funciones
% operacionales y arroja un string con la equivalencia en el sistema
% hexadecimal

function hexadecimal = binario_hexadecimal(binario)

const= floor(length(binario)/4);
out= [];

for i=0:(const-1)
    if (binario(4*i+1)==0 && binario(4*i+2)==0 && binario(4*i+3)==0 && binario(4*i+4)==0)
        out= strcat(string(0), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==0 && binario(4*i+3)==0 && binario(4*i+4)==0)
        out= strcat(string(1), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==1 && binario(4*i+3)==0 && binario(4*i+4)==0)
        out= strcat(string(2), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1 && binario(4*i+3)==0 && binario(4*i+4)==0)
        out= strcat(string(3), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==0 && binario(4*i+3)==1 && binario(4*i+4)==0)
        out= strcat(string(4), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==0 && binario(4*i+3)==1 && binario(4*i+4)==0)
        out= strcat(string(5), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==1 && binario(4*i+3)==1 && binario(4*i+4)==0)
        out= strcat(string(6), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1 && binario(4*i+3)==1 && binario(4*i+4)==0)
        out= strcat(string(7), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==0 && binario(4*i+3)==0 && binario(4*i+4)==1)
        out= strcat(string(8), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==0 && binario(4*i+3)==0 && binario(4*i+4)==1)
        out= strcat(string(9), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==1 && binario(4*i+3)==0 && binario(4*i+4)==1)
        out= strcat('A', out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1 && binario(4*i+3)==0 && binario(4*i+4)==1)
        out= strcat('B', out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==0 && binario(4*i+3)==1 && binario(4*i+4)==1)
        out= strcat('C', out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==0 && binario(4*i+3)==1 && binario(4*i+4)==1)
        out= strcat('D', out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==1 && binario(4*i+3)==1 && binario(4*i+4)==1)
        out= strcat('E', out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1 && binario(4*i+3)==1 && binario(4*i+4)==1)
        out= strcat('F', out);
    else
        disp('valor invalido')
        break
end
end

% previene errores cuando el numero binario es menor a 4 bits
if const==0
  i= 0;
else
  i= i+1;
end

alpha= length(binario)-4*const;
if alpha==1
    if (binario(4*i+1)==0)
        out= strcat(string(0), out);
    elseif (binario(4*i+1)==1)
        out= strcat(string(1), out);
    end
elseif alpha==2
    if (binario(4*i+1)==0 && binario(4*i+2)==1)
        out= strcat(string(2), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1) 
        out= strcat(string(3), out);
    end
elseif alpha==3
    if (binario(4*i+1)==0 && binario(4*i+2)==0 && binario(4*i+3)==1)
        out= strcat(string(4), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==0 && binario(4*i+3)==1)
        out= strcat(string(5), out);
    elseif (binario(4*i+1)==0 && binario(4*i+2)==1 && binario(4*i+3)==1)
        out= strcat(string(6), out);
    elseif (binario(4*i+1)==1 && binario(4*i+2)==1 && binario(4*i+3)==1)
        out= strcat(string(7), out);        
    end
end

hexadecimal= out;

end