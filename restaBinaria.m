function [z1,z2] = restaBinaria(Minuendo, Sustraendo) 

memo= 'El resultado es positivo ';

%%% COMPLETAR VECTORES %%%

if (length(Sustraendo) > length(Minuendo))
    cont1= length(Minuendo) + 1;
    for i=0:(length(Sustraendo) - length(Minuendo) - 1)
          Minuendo(cont1)= 0;
          cont1= cont1 + 1;
    end
    aux= Sustraendo;
    Sustraendo= Minuendo;
    Minuendo= aux;
    memo= 'El resultado es negativo ';
elseif (length(Sustraendo) <  length(Minuendo))
    cont2= length(Sustraendo) + 1;
    for i=0:(length(Minuendo) - length(Sustraendo) - 1)
          Sustraendo(cont2)= 0;
          cont2= cont2 + 1;
    end
else
    comp= comparador(Minuendo, Sustraendo);
    if comp == 'b mayor que a'
      aux= Sustraendo;
      Sustraendo= Minuendo;
      Minuendo= aux;
      memo= 'El resultado es negativo ';
    end
end

%%% RESTAR POSICION A POSICION %%%

prestamo= 0;
resultado= [];

for i=1:(length(Minuendo) - 1)
    
    if (prestamo == 0)
        
       if (Minuendo(i)==0 && Sustraendo(i)==0)
           resultado(i)= 0;
           prestamo= 0;
       elseif (Minuendo(i)==1 && Sustraendo(i)==0) 
           resultado(i)= 1;
           prestamo= 0;
       elseif (Minuendo(i)==0 && Sustraendo(i)==1)
           resultado(i)= 1;
           prestamo= 1;       
       elseif (Minuendo(i)==1 && Sustraendo(i)==1)
           resultado(i)= 0;
           prestamo= 0;
       end

    elseif (prestamo == 1)
        
       if (Minuendo(i)==0 && Sustraendo(i)==0)
          resultado(i)= 1;
          prestamo= 1;
       elseif (Minuendo(i)==1 && Sustraendo(i)==0) 
           resultado(i)= 0;
           prestamo= 0;
       elseif (Minuendo(i)==0 && Sustraendo(i)==1)
           resultado(i)= 0;
           prestamo= 1;    
       elseif (Minuendo(i)==1 && Sustraendo(i)==1)
          resultado(i)= 1;
          prestamo= 1;
       end
 
    end
  
end
  
% asegura que efectue bien la resta cuando los numeros son de un bit
ind= 0;
if length(Minuendo)==1 && length(Sustraendo)==1
    i= 0;
    ind= 1;
end

if prestamo == 0
    if (Minuendo(i+1)==1 && Sustraendo(i+1)==0)
      resultado(i+1)= 1;  
    elseif (Minuendo(i+1)==0 && Sustraendo(i+1)==0)
      resultado(i+1)= 0;       
    elseif (Minuendo(i+1)==1 && Sustraendo(i+1)==1)
      resultado(i+1)= 0;        
    end
end

% el siguiente codigo elimina ceros innecesarios a la derecha del resultado

if ind == 0
    
resultado= fliplr(resultado);
cont= 1;

for i=1:length(resultado)
    if resultado(cont) == 1
        break
    elseif resultado(cont) == 0
        resultado(cont)= [];
        cont= 0;
    end
    cont= cont + 1;
end

resultado= fliplr(resultado);

if isempty(resultado)
    resultado= 0;
end

end

z1= resultado;
z2= memo;

end