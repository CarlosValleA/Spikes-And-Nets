

function [T1 T2 T3] = combi3Total1(A)

[u,v] = size(A);
T1 = cellstr('');
T2 = cellstr('');
T3 = cellstr('');
for i = 1:v
    [c1 c2 c3] = combi3(A(:,i));
    T1 = [T1;c1];
    T2 = [T2;c2];
    T3 = [T3;c3];
end


T1(1)='';
T2(1)='';
T3(1)='';
end