% La funcion toma dos vectores binarios y efectua la division entre ellos

function div = divisionBinaria(a, b)

% decide quien es mayor entre a y b
aux= 0;
if length(a)>length(b)
  aux= 1;  
elseif length(a)<length(b)
  division= 0;
elseif length(a)==length(b)
  if comparador(a, b)=='a mayor que b'
      aux= 1;
  elseif comparador(a, b)== 'b mayor que a'
      division= 0;
  elseif comparador(a, b)== ' '
      aux= 1;
  end
end

% si a >= b efectua restas sucesivas hasta que el resto sea menor que b

if aux==1
    
  resto= a;
  division= 0;

  if length(resto)>length(b)
    still= 'si';
  elseif length(resto)<length(b)
    still= 'no';
  elseif length(resto)==length(b)
    if comparador(resto, b)=='a mayor que b'
        still= 'si';
    elseif comparador(resto, b)== 'b mayor que a'
        still= 'no';
    elseif comparador(resto, b)== ' '
        still= 'si';
    end
  end

  while still=='si'
      
      division= sumaBinaria(division, 1);
      [resto, signo]= restaBinaria(a, multiplicacionBinaria(b, division));
    
      if length(resto)>length(b)
          still= 'si';
      elseif length(resto)<length(b)
          still= 'no';
      elseif length(resto)==length(b)
        if comparador(resto, b)=='a mayor que b'
          still= 'si';
        elseif comparador(resto, b)== 'b mayor que a'
          still= 'no';
        elseif comparador(resto, b)== ' '
          still= 'si';          
        end
      end
      
  end

end

div= division;

end