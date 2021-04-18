clear all
clc

% b= input(' inB ', 's');

% c =octal_binario(a)
% d= hexadecimal_binario(a)

% k1= binarioString_binarioVector(a)
% k2= binarioString_binarioVector(b)
% % e= binarioVector_binarioString(k)
% [res1, res2] = restaBinaria(k1, k2);
% res1
% res2


% [res1, res2] = restaBinaria(a, b)

% division decimal

% a= input(' ingrese minuendo ', 's');
% b= input(' ingrese sustraendo ');
% 
% resto= a;
% division= 0;
% 
% while resto>=b
%     division= division + 1;
%     resto= a - b*division;
% end
% 
% division
% resto

% b= decimal_binario(a)
% c= binario_decimal(b)


% a= input(' ingrese minuendo ', 's');
% b= input(' ingrese sustraendo ', 's');

a= [1 0 1];
b= [1];

[cc,dd]= restaBinaria(a,b)

% resto= a;
% division= 0;
% 
% if length(resto)>length(b)
%   still= 'si';
% elseif length(resto)<length(b)
%   still= 'no';
% elseif length(resto)==length(b)
%   if comparador(resto, b)=='a mayor que b'
%       still= 'si';
%   elseif comparador(resto, b)== 'b mayor que a'
%       still= 'no';
%   end
% end
% 
% while still=='si'
%     division= sumaBinaria(division, 1);
%     [resto, signo]= restaBinaria(a, multiplicacionBinaria(b, division));
%     
%     if length(resto)>length(b)
%         still= 'si';
%     elseif length(resto)<length(b)
%         still= 'no';
%     elseif length(resto)==length(b)
%       if comparador(resto, b)=='a mayor que b'
%         still= 'si';
%       elseif comparador(resto, b)== 'b mayor que a'
%         still= 'no';
%       end
%     end
% end

% division = divisionBinaria(a, b)
% resto
% signo
% multiplicacionBinaria(b, a)
% multiplicacionBinaria(a, b)