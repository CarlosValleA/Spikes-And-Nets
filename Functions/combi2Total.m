
function [T1 T2] = combi2Total(A)

[u,v] = size(A);
T1=cellstr('');
T2=cellstr('');

for i = 1:v
    [c1 c2] = combi2(A(:,i));
    T1 = [T1;c1];
    T2 = [T2;c2];
end


T1(1)='';
T2(1)='';
end