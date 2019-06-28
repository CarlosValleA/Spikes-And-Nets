%  clear
% close all
% name = '170517Bg2c2.txt';
% data = importdata(name);
% 
% BurstF1(data,name,0,2);

function [T] = BurstF(SavePdf,SaveFig,TimeFormat,BW,data,name,mosaico,varargin)
% M: datos 
% name: nombre del archivo
VisibleFigure = 'off';
data = data*0.1;
name = char(name);
M = data;
N = length(M);
q = 0;
I = zeros(N,1);
U = 999999999;
for k = 1:N-1
    I(k) =  abs(M(k+1)-M(k));
    if I(k)> q
        q = I(k);
    end
    if I(k)< U
        U = I(k);
    end
end


SU = sum(I(:));
X = SU/N;
D = 0;
for k = 1:N
    D = D + (I(k)-X).^2;
end

DS = (D./(N-1)).^(1/2);
ES = DS/(N.^0.5);
CV = DS/X;
GA = (1/CV)^0.5;

LB = 0;
SB = 0;
BD = 0;

for k = 1:N
    if I(k)>X
        LB = LB+1;
    else
        SB = SB + 1;
        BD = BD + I(k);
    end
end

BD = BD/SB;
BR = SB/LB;
BI = SB/(BD);



T = [   "N Spikes"                 string(N);...
        "Min & MAX ISI"             string(U)+"-"+string(q);...
        "Mean(X)"                   string(X);...
        "SD"                        string(DS);...
        "SE"                        string(ES);...
        "Gamma"                     string(GA);...
        "CV"                        string(CV*100);...
        "Intervals < X"             string(SB);...
        "Intervals > X"             string(LB);...
        "Short/Long Interval Ratio" string(BR);...
        "Short Interval Intensity"  string(BI)+" Spikes/s"
        
    ];

%BB = input('2nd Burst Time Window (ms): ');
BB = 10; 

LI = 0 ; SI = 0;
for k = 1:N
    if I(k)>BB
        LI = LI + 1;
    else
        SI = SI + 1;
    end
    
end
inter =string(round(U*10)/10)+'-'+string(round(q*10)/10);
valores1 = {num2str(N);char(inter) ;num2str(round((X)*100)/100);num2str(round((DS)*100)/100);num2str(round((ES)*100)/100);num2str(GA);...
    num2str((round((CV*100)*100)/100));num2str(SB);num2str(LB);num2str(round((BR)*100)/100);num2str(round((BI)*100)/100);num2str(BB);num2str(SI);...
    num2str(LI);num2str(BB);num2str(round((SI/LI)*1000)/1000);num2str(SI/BB)} ;

BB = 50; 

LI = 0 ; SI = 0;
for k = 1:N
    if I(k)>BB
        LI = LI + 1;
    else
        SI = SI + 1;
    end
    
end
inter =string(round(U*10)/10)+'-'+string(round(q*10)/10);
valores2 = {num2str(N);char(inter) ;num2str(round((X)*100)/100);num2str(round((DS)*100)/100);num2str(round((ES)*100)/100);num2str(GA);...
    num2str(round((CV*100)*100)/100);num2str(SB);num2str(LB);num2str(round((BR)*100)/100);num2str(round((BI)*100)/100);num2str(BB);num2str(SI);...
    num2str(LI);num2str(BB);num2str(round((SI/LI)*1000)/1000);num2str(SI/BB)} ;






T = [   "N Spikes"                 string(N);...
        "Min & MAX ISI"             string(U)+" - "+string(q);...
        "Mean(X)"                   string(X);...
        "SD"                        string(DS);...
        "SE"                        string(ES);...
        "Gamma"                     string(GA);...
        "CV"                        string(CV*100);...
        "Intervals < X"             string(SB);...
        "Intervals > X"             string(LB);...
        "Short/Long Interval Ratio" string(BR);...
        "Short Interval Intensity"  string(BI)+" Spikes/s";...
        "2nd Burst Time Window (ms)" string(BB);...
        "Intervals < BTW"           string(SI);...
        "Intervals > BTW"           string(LI);...
        "Burst Duration"            string(BB);...
        "Burst Ratio"               string(SI/LI);...
        "Burst Intensity"           string(SI/BB)
        
        
    ];








LastName = {'N Spikes ';
            'Min & MAX ISI';
            'Mean(X)';
            'SD';
            'SE';
            'Gamma';
            'CV';
            'Intervals < X';
            'Intervals > X';
            'Short/Long Interval Ratio';
            'Short Interval Intensity';
            char('2nd Burst Time Window (' + string(char(TimeFormat)) + ')');
            'Intervals < BTW';
            'Intervals > BTW';
            'Burst Duration';
            'Burst Ratio';
            'Burst Intensity'};


T = [[LastName] [valores1] [valores2] ];

%f = figure;
%f.Position = [960 500 370 358];
%t = uitable(f,'ColumnWidth',{140 100 100},'Data',[LastName valores1 valores2],...
 %   'Position',[0 0 380 362],'ColumnName',{name(1:end-4) 'W.10ms' 'W.50ms'},'FontSize',14);


partes = cell2mat(varargin) ;

newname = strcat(name(1:end-4),'_BU');




if sum(size(partes))==2 && mosaico~=1
    figura = figure;
    %plot(0,0);
    
    dim1 =[.0 1-0.05 0.5 .05];
    annotation('textbox',dim1,'String',string(name(1:end-4)))
    
    
    a = figura;
    a.Position = [100 100 600 550];
    a.Visible =VisibleFigure;
    Tablas(T,3);
    dim1 =[.5 1-2*0.05 0.25 .05];
    annotation('textbox',dim1,'String',string(T(1,2)))
    %set(figura,'Visible','Off')
    %S1.('BU')=T;
    if SaveFig
        savefig(newname)
    end
    %save(newname+string('T'),'-struct','S1')
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_BU'),'pdf')
    end
    close figure 1
    
end


if sum(size(partes))>2

    titulo = {'('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%'};
    Tmosaico = [titulo 'W.10ms' 'W.50ms' ;T];
    figura = figure;
    
    %dim1 =[.0 1-0.05 0.33 .05];
    %annotation('textbox',dim1,'String','('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    
    a = figura;
    a.Position = [100 100 600 500];
    a.Visible =VisibleFigure;
    Tablas(Tmosaico,3)
    dim1 =[.5 1-2*0.05 0.25 .05];
    annotation('textbox',dim1,'String','Mean')
    set(figura,'Visible',VisibleFigure)
    %t.ColumnName = {titulo 'W.10ms' 'W.50ms' };
    newname = strcat(name(1:end-4),'_BU',char(string(partes(2))));
    S1.('BU') = [T];
    %save(newname+string('T'), '-struct', 'S1');
    if SaveFig
        savefig(newname)
    end
    saveas(figura,strcat(name(1:end-4),'_BU','_time',char(string(partes(2)))),'pdf')
    close figure 1
end


intervalos = [];


if mosaico ==1
    tiempo = data(end);
    inicio=1;
    rate = [];

    
    
    for i=1:partes(1)
        
        for k=1:length(data)
            if data(k)<=tiempo*(i)/partes(1)
                final = k;
            end
        end
        
        %subplot(3,2,i,'Parent',p)
        t = BurstF(SavePdf,SaveFig,TimeFormat,BW,data((inicio:final))*10,name,0,6,i,N);
        rate = [rate; t(end,2) t(end,3) t(11,2)];
        intervalos = [intervalos;(inicio) (final)];
        inicio=final;
    
    end
    
    intervalos;
    [qq pp]=size(rate);
    for i = 1:qq
        a = str2num(cell2mat(rate(i,1)));
        b = str2num(cell2mat(rate(i,2))); 
        c = str2num(cell2mat(rate(i,3)));
        A(i) = a;
        B(i) = b;
        C(i) = c;
    end
    figura = figure;
    x = [1:partes(1)];
    plot(x,A,x,B,x,C)
    legend(['Window 10' + string(char(TimeFormat))  ]  ,['Window 50' + string(char(TimeFormat)) ],'Mean')
    title('Burst Intensity')
    xlabel('Segment (ordinal)')
    ylabel('')
    set(figura,'Visible',VisibleFigure)
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_BU_','intensity'),'pdf')
    end
    close figure 1

end
























end