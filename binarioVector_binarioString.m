% la funcion convierte un binario desde vector a string
% la funcion strcat concatena strings horizontalmente

function binString = binarioVector_binarioString(binVector)

out= [];

for i=1:length(binVector)
    if binVector(i) == 0
        out= strcat(string(0), out);
    elseif binVector(i) == 1
        out= strcat(string(1), out);
    else
        disp('valor invalido')
        out= 0;
        break
    end
end

binString= out;

end