function x = sumaBinaria(Numero1, Numero2)

%%% COMPLETAR VECTORES %%%

if (length(Numero2) > length(Numero1))
    cont1= length(Numero1) + 1;
    for i=0:(length(Numero2) - length(Numero1) - 1)
          Numero1(cont1)= 0;
          cont1= cont1 + 1;
    end
elseif (length(Numero2) <  length(Numero1))
    cont2= length(Numero2) + 1;
    for i=0:(length(Numero1) - length(Numero2) - 1)
          Numero2(cont2)= 0;
          cont2= cont2 + 1;
    end
end

%%% SUMAR POSICION A POSICION %%%

acarreo= 0;
resultado= [];

for i=1:(length(Numero2) - 1)
    
    if (acarreo == 0)
        
       if (Numero1(i)==0 && Numero2(i)==0)
           resultado(i)= 0;
           acarreo= 0;
       elseif ( (Numero1(i)==1 && Numero2(i)==0) ||(Numero1(i)==0 && Numero2(i)==1) )
           resultado(i)= 1;
           acarreo= 0;
       elseif (Numero1(i)==1 && Numero2(i)==1)
           resultado(i)= 0;
           acarreo= 1;
       end

    elseif (acarreo == 1)
        
       if (Numero1(i)==0 && Numero2(i)==0)
          resultado(i)= 1;
          acarreo= 0;
       elseif ( (Numero1(i)==1 && Numero2(i)==0) ||(Numero1(i)==0 && Numero2(i)==1) )
          resultado(i)= 0;
          acarreo= 1;
       elseif (Numero1(i)==1 && Numero2(i)==1)
          resultado(i)= 1;
          acarreo= 1;
       end
 
    end
  
end

% asegura que efectue bien la suma cuando los numeros son de un bit
if length(Numero1)==1 && length(Numero2)==1
    i= 0;
end

if acarreo == 0
      
    if (Numero1(i+1)==0 && Numero2(i+1)==0)
      resultado(i+1)= 0;
    elseif (Numero1(i+1)==1 && Numero2(i+1)==0) ||(Numero1(i+1)==0 && Numero2(i+1)==1)
      resultado(i+1)= 1;
    elseif (Numero1(i+1)==1 && Numero2(i+1)==1)
      resultado(i+1)= 0;
      resultado(i+2)= 1;
    end
       
elseif acarreo == 1
        
    if ((Numero1(i+1)==1 && Numero2(i+1)==0) ||(Numero1(i+1)==0 && Numero2(i+1)==1))
      resultado(i+1)= 0;
      resultado(i+2)= 1;
    elseif (Numero1(i+1)==1 && Numero2(i+1)==1)
      resultado(i+1)= 1;
      resultado(i+2)= 1;
    end
    
end

x= resultado;

end