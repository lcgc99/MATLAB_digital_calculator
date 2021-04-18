% la funcion strcat concatena strings horizontalmente

% la funcion toma el vector resultado que arrojan las funciones
% operacionales y arroja un string con la equivalencia en el sistema
% octal

function octal = binario_octal(binario)

const= floor(length(binario)/3);
out= [];

for i=0:const-1
    if (binario(3*i+1)==0 && binario(3*i+2)==0 && binario(3*i+3)==0)
        out= strcat(string(0), out);
    elseif (binario(3*i+1)==1 && binario(3*i+2)==0 && binario(3*i+3)==0)
        out= strcat(string(1), out);
    elseif (binario(3*i+1)==0 && binario(3*i+2)==1 && binario(3*i+3)==0)
        out= strcat(string(2), out);
    elseif (binario(3*i+1)==1 && binario(3*i+2)==1 && binario(3*i+3)==0)
        out= strcat(string(3), out);
    elseif (binario(3*i+1)==0 && binario(3*i+2)==0 && binario(3*i+3)==1)
        out= strcat(string(4), out);
    elseif (binario(3*i+1)==1 && binario(3*i+2)==0 && binario(3*i+3)==1)
        out= strcat(string(5), out);
    elseif (binario(3*i+1)==0 && binario(3*i+2)==1 && binario(3*i+3)==1)
        out= strcat(string(6), out);
    elseif (binario(3*i+1)==1 && binario(3*i+2)==1 && binario(3*i+3)==1)
        out= strcat(string(7), out);
    else
        disp('valor invalido')
        break
    end
end

% previene errores cuando el numero binario es menor a 3 bits
if const==0
  i= 0;
else
  i= i+1;
end

alpha= length(binario)-3*const;
if alpha==1
    if (binario(3*i+1)==0)
        out= strcat(string(0), out);
    elseif (binario(3*i+1)==1)
        out= strcat(string(1), out);
    end
elseif alpha==2
    if (binario(3*i+1)==0 && binario(3*i+2)==1)
        out= strcat(string(2), out);
    elseif (binario(3*i+1)==1 && binario(3*i+2)==1) 
        out= strcat(string(3), out);
    end
end

octal= out;

end

% out