function y = multiplicacionBinaria(Multiplicando, Multiplicador)

resultado= [];
Numero1= [];

% guarda en el multiplicador al numero de menor longitud
if (length(Multiplicador) > length(Multiplicando))
    aux= Multiplicando;
    Multiplicando= Multiplicador;
    Multiplicador= aux;
end

if Multiplicador(1) == 0 
    Numero1= zeros(1, length(Multiplicando));
    if length(Multiplicador)==1
        resultado= 0;
    end
else
    Numero1= Multiplicando;
    if length(Multiplicador)==1
        resultado= Numero1;
    end
end

for i=2:(length(Multiplicador))
   
   aux= []; 
   Numero2= [];
    
   % for (k) con el cual se posicionan ceros a la derecha de los numeros
   for k=1:(i-1)
      Numero2(k)= 0; 
   end
    
   if Multiplicador(i) == 0 
       aux= zeros(1, length(Multiplicando));
       Numero2= [Numero2 aux];
       resultado= sumaBinaria(Numero1, Numero2);
   else
       aux= Multiplicando;
       Numero2= [Numero2 aux];
       resultado= sumaBinaria(Numero1, Numero2);
   end
   
   Numero1= resultado;  
   
end

y= resultado;

end