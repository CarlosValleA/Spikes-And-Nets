% 
% Folder = dir('*.txt');
% [BackGround, Laser, Deaferenciadas] = Clasificador(Folder);
% 
% combi31(BackGround(:))
function [col1 col2 col3] = combi31(datos)

D =cellstr('');
for i =1:length(datos)
    if length(cell2mat(datos(i))) >1
        D(i,1) = cellstr(datos(i));
    end
end
Folder = D;

col1='';
col2='';
col3='';
N = length(Folder);
if N<3
    return
end
factor(3,N);

function y = factor(n,m)
y = factorial(m)/(factorial(n)*factorial(m-n));
end


col1 = cellstr('');
col2 = cellstr('');
col3 = cellstr('');

if N <3
    display('No hay suficientes datos')
    return
end
for i = 1:N
    for j = i+1:N
        for k =j+1:N
            col1 = [col1; Folder(i)];
            col2 = [col2; Folder(j)];
            col3 = [col3; Folder(k)];
        end
    end
end


col1(1) = '';
col2(1) = '';
col3(1) = '';





end