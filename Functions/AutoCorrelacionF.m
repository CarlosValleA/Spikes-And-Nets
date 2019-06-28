% clear
% close all
% name = '180517BgVC3.txt';
% data = importdata(name);
% N = length(data);
% AutoCorrelacionF('ms',500,data,name,1,6);
% 
% 

function [y] =AutoCorrelacionF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,data,name,mosaico,varargin)
% data: archivo con los tiempos de spikes en ms
% posicion: lugar de donde se comienza a analizar los datos
% rango: cuantos datos se analizan ubicado a la derecha de la posicion
% name: Nombre del archivo con los datos
% BW : bin width on the specified time format
name = char(name);
datos = data;
visibleFigure = 'off';

D =[];
data = data';
N = length(data);

for i = 1:N
    A = data(1);
    data(1)=[];
    dife = round(data-A);
    dife = dife(dife<TimeWindow + TimeWindow*0.05);
    D =[D dife];
    
end

y = D;

    


partes = cell2mat(varargin) ;
newname = strcat(name(1:end-4),'_AC');




if sum(size(partes))==2 & mosaico~=1
    figura = figure;
    histogram(y,'BinWidth',BW,'Normalization','probability')
    xlabel('Delay Time ('+string(TimeFormat)+')')
    ylabel('Percentage of Intervals')
    title('Autocorrelation '+string(name(1:end-4)))
    xlim([0 TimeWindow])
    set(figura,'Visible',visibleFigure)
    
    S1 = y;
    if SaveFig
        savefig(newname)
    end
    save(strcat(newname,'.txt'),'-ascii','S1')
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_AC'),'pdf')
    end

end

if sum(size(partes))>2
    
    histogram(y,'BinWidth',BW,'Normalization','probability')
    xlabel('Delay Time ('+string(TimeFormat)+')')
    ylabel({'Percentage of','Intervals'})
    xlim([0 TimeWindow])
    
    
    title('('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    
    newname = strcat(name(1:end-4),'_AC',char(string(partes(2))));
    S1 = y;
    save(strcat(newname,'.txt'),'-ascii','S1')

end





intervalos=[];

if mosaico ==1
    tiempo = datos(end);
    
    inicio=1;
%     f = figure;
%     p = uipanel('Parent',f,'BorderType','none');
%     p.Title = 'AutoCorrelation '+string(name(1:end-4))+' (time '+string(round(datos(end)/(100*60))/(100))+'min)';
%     p.TitlePosition = 'centertop'; 
%     p.FontSize = 12;
%     p.FontWeight = 'bold';
%   
    panhandle = figure;
    set(panhandle,'Visible',visibleFigure)
    [QQ PP]  = Grafic(partes(1));
    for i=1:partes(1)
        
        for k=1:length(datos)
            if datos(k)<=(tiempo)*(i)/partes(1)
                final = k;
            end
        end
        
        ax(i) = subplot(QQ,PP,i,'parent',panhandle);
        length(datos((inicio:final)));
        AutoCorrelacionF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,datos((inicio:final)),name,0,6,i,N);
        intervalos = [intervalos;inicio final];
        inicio=final;
    
    end
    linkaxes(ax,'y')
    newname = strcat(name(1:end-4),'_AC_time');
    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(panhandle,strcat(name(1:end-4),'_AC','time'),'pdf')
    end
    intervalos;
    
end

















end