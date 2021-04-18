% la funcion convierte un binario desde string a vector
% la funcion strcat concatena strings horizontalmente

function binVector = binarioString_binarioVector(binString)

out= [];
binString= fliplr(binString);

for i=1:length(binString)
    switch binString(i)
      case '0'
        out(i)= 0;
      case '1'
        out(i)= 1;
      otherwise
        disp('valor invalido')
        out= 0;
        break
    end
end

binVector= out;

end