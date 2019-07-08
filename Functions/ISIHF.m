% name = '170517Bg2c2.txt';
% data = importdata(name);
% 
% TimeWindow = 500;
% a = ISIHF1('ms',TimeWindow,data,name,0,6);


function y = ISIHF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,A,name,mosaico,varargin)

%InterSpike(data,name,mosaico o no,numero de cuadros,el numero del cuadro);
% mosaico o no: (1) mosaico , (0) no mosaico
%numero de cuadros: si hay mosaico , este indica cuantos seran mostrados
%                   tiene que ser un numero igual a 6 o menos.
%                   Si no hay mosaico y numero de cuadros=1, no se mostrara
%                   nada.
%numero del cuadro: etiqueta del 1 al numero de cuadros de los graficos.
figure_visible = 'off';
name = char(name);
VV = TimeWindow/10;
N = length(A);
I = zeros(1,N);
o=1;
SU = 0;
RES = 0.1;
E = zeros(1,1500);
MA = 0;
MI = 9999999899999909;
D = 0;


K = 1 ;N = N-o ;
y=[];
if length(A)~=1

    while 1
        salto = 0;

        I(K) = A(K+o) - A(K);
        SU = SU + I(K);
        V = round(I(K)*RES) + 1;

        if V > VV
            salto = 1;
        end
        if salto == 0
            E(V) = E(V)+1;
        end
        K = K+1;
        if K > N
            break
        end
    end
end
X = SU/N;

K = 1;

while 1
    if I(K)>MA
        MA = I(K);
    end

    if I(K)<MI
        MI = I(K);
    end

    D = D + (I(K)-X)^2;
    K = K +1 ;
    if K>N
        break
    end
end
DS = (D/(N-1))^0.5 ;
ES = DS/(N^0.5);
CV = DS/X;
GA = (1/CV)^0.5 ;

MAX = 0;
V = 589/VV;
for K =1:VV
    if E(K)>MAX
        MAX = E(K);
    end
end
YM = round(MAX + (MAX/5));

%X = 50;
L = E(K);
Y = 290 - ((L*270)/YM);
M = VV -1;

for K =1:M
    L = E(K);
    X1 = (K*V)+50;
    X = X1;
end




DS*RES  ; %SD
CV*100 ;  %CV
GA    ;   %alpha


if length(A)<=1

    histogram([ ])
    set(gcf,'Visible',figure_visible)
    title('no time data')
%     figura =figure;
%     set(figura,'Visible','off')
    y = [];
    return
end



y = round(diff(A))/10;

y(1) =[];
X = sum(y(y<=TimeWindow))/N;
spiketime = ((1/X)*10000);

T = {'Total '       N;
    'Mean '+string(TimeFormat)       round(X*100)/100;
    'SD '+string(TimeFormat)         round(DS*RES*100)/100;
    'CV%'           round(CV*100*100)/100;
    'Alpha'         round(GA*100)/100;
    'Rate sps'      round(spiketime*100)/100};

partes = cell2mat(varargin);


newname = strcat(name(1:end-4),'_ISI');



if sum(size(partes))==2 & mosaico~=1


    figura = figure;
    histogram(y,'BinWidth',BW,'Normalization','probability');

    xlim([0 TimeWindow])
    xlabel('Delay Time ('+string(TimeFormat)+')')
    ylabel('Percentage of Intervals')
    title('InterSpike histogram '+string(name(1:end-4)))
    set(figura,'Visible',figure_visible)
    Tablas(T,5)
%     S0.('IS') = T;
%     save(newname+string('T'), '-struct', 'S0')

    S1 = y;
    save(strcat(newname,'.txt'),'-ascii','S1')
    %save(newname, '-struct', 'S1')
    
    if SaveFig
        savefig(figura,strcat(newname,'.fig'))
    end
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_IS'),'pdf')
    end

end

if sum(size(partes))>2

    histogram(y,'BinWidth',BW,'Normalization','probability');

    xlim([0 TimeWindow])
    xlabel('Time Delay ('+string(TimeFormat)+')')
    ylabel({'Percentage of','Intervals'})
    title('InterSpike histogram'+string(name(1:end-4)))
    





    title('('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    newname = strcat(name(1:end-4),'_ISI',char(string(partes(2))));


    S1 = y;
    save(strcat(newname,'.txt'),'-ascii','S1')
end


intervalos=[];
if mosaico ==1

    tiempo = A(end);
    inicio=1;


    panhandle = figure;
    set(panhandle,'Visible',figure_visible)
    [QQ PP]  = Grafic(partes(1));
    for i =1:partes(1)
        for k=1:length(A)
            if A(k)<=tiempo*(i)/partes(1)
                final=k;
            end
        end
        ax(i) = subplot(QQ,PP,i,'parent', panhandle);
        y = ISIHF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,A((inicio:final)),name,0,6,i,length(A));

        intervalos = [intervalos;inicio final];
        inicio=final;



    end
    linkaxes(ax,'y')

    
    newname = strcat(name(1:end-4),'_ISI_time','.fig');
    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(panhandle,strcat(name(1:end-4),'_IS','time'),'pdf')
    end
    intervalos;


end






end
