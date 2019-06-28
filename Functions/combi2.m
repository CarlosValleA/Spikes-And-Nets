

function [colum1 colum2] = combi2(datos)


D =cellstr('');
for i =1:length(datos)
    if length(cell2mat(datos(i))) >1
        D(i,1) = cellstr(datos(i));
    end
end


Folder = D;



N = length(Folder);


function y = factor(n,m)
y = factorial(m)/(factorial(n)*factorial(m-n));
end

colum1=cellstr('');
colum2=cellstr('');

if N<2
    return
end

for i = 1:N-1
    for k = i+1:N
        colum1 = [colum1; Folder(i) ];
        colum2 = [colum2; Folder(k) ];
    end
end
colum1(1)='';
colum2(1)='';





end