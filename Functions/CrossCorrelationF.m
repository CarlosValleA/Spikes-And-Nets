% clear
% close all
% Folder = dir('*.txt');
% OlderFolder = cd;
% [BackGround, Laser, Deaferenciadas] = Clasificador(Folder);
% [col1 col2] = combi2(BackGround(:));
% name1 = '170517Bg1c1.txt';
% name2 ='170517Bg1c2.txt';
% data1 = importdata('170517Bg3c1.txt');
% data2 = importdata('170517Lc2.txt');
% 
% %data1 = importdata(char(col1(1)));
% %data2 = importdata(char(col2(1)));
% 
% CrossCorrelationF(data1,data2,name1,name2,1,9);
function y = CrossCorrelationF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,data1,data2,name1,name2,mosaico,varargin)
VisibleFigure = 'off';
name1 = char(name1);
name2 = char(name2);
A = data1*0.1;
B = data2*0.1;
E = zeros(1000,1);
NA = length(data1);
NB = length(data2);

V = 1;



VV = TimeWindow; %% (400)CC window(+/-ms)
M = VV +VV;
CO = 1; % (420)Processing 
y = [];
for K = 1:NA
    for Q = CO:NB
        I = round(B(Q)-A(K))+VV;
        if I<=0
            CO = Q;
            continue        
        end   
        if I >M
            break  
        end
        E(I) = E(I)+1;
        y = [y ; I];
    end
end
escale = max(E(:));





V1 = M*0.4; V2 = M*0.6;
W = 589/(M-1);
MAX = 0;
N = 0; SU = 0;DE = 0; SD = 0; MIN = 1E+21;
for K = 1:V1
    SU = SU+E(K);
end
for K = V2:M
    SU = SU+E(K);
end
ME = SU/(M*0.8);

for K = 1:M
    if E(K) > MAX
        MAX = E(K);
    end
    if E(K) < MIN
        MIN = E(K);
    end
end

for K = 1:V1
    DE = DE + (E(K)-ME).^2;
end
for K = V2:M
    DE = DE +(E(K)-ME)^2;
end
SD = (DE/(M*0.8))^0.5;
LA = ME + SD;LB = ME -SD;
YM = round(MAX+(MAX/5));
KP = MAX/ME ; KT = MIN/ME ;DP = (MAX-ME)/SD ; DT = (ME-MIN)/SD;

partes = cell2mat(varargin) ;
newname = strcat(name1(1:end-4),'-',name2(1:end-4),'_CC');


if sum(size(partes))==2 && mosaico~=1
    figura = figure;
    histogram(y(y<1000)-TimeWindow,'BinWidth',BW,'Normalization','probability')
    xlim([-TimeWindow TimeWindow])
    xlabel('Delay Time ('+string(TimeFormat) +')')
    ylabel('Percentage of Intervals')
    title('CrossCorrelation '+string(name1(1:end-4))+'(A) and '+string(name2(1:end-4))+'(B)')
    set(figura,'Visible',VisibleFigure)
    
    S1 = y;
    if SaveFig
        savefig(newname)
    end
    save(strcat(newname,'.txt'),'-ascii','S1')
    if SavePdf
        saveas(figura,strcat(name1(1:end-4),'-',name2(1:end-4),'_CC'),'pdf')
    end

end

if sum(size(partes))>2
    histogram(y(y<1000)-TimeWindow,'BinWidth',BW,'Normalization','probability')
    xlim([-TimeWindow TimeWindow])
    xlabel('Delay Time ('+string(TimeFormat) +')')
    ylabel({'Percentage of', 'Intervals'})
    title({'('+string(partes(2))+') A= '+string(round(NA*10000/partes(3))/100)+'%','   B= ' + ...
        string(round(NB*10000/partes(4))/100)+'%'})
    newname = strcat(name1(1:end-4),'-',name2(1:end-4),'_CC',char(string(partes(2))));
    S1 = y;
    save(strcat(newname,'.txt'),'-ascii','S1')
end


% %%% intevarlos de diferentes tiempos
% intervalosA = [];
% intervalosB = [];
% 
% 
% if mosaico ==1
%     tiempoA = data1(end);
%     tiempoB = data2(end);
%     inicioA = 1;
%     inicioB = 1;
% %     f= figure;
% %     p = uipanel('Parent',f,'BorderType','none');
% %     p.Title = 'AutoCorrelation '+string(name1(1:end-4))+' y ' ...
% %         +string(name2(1:end-4))+' (time '...
% %         +string(round(data1(end)/(100*60))/(100))...
% %         +string(round(data2(end)/(100*60))/(100))+'min)';
% %     p.TitlePosition = 'centertop'; 
% %     p.FontSize = 12;
% %     p.FontWeight = 'bold';
% 
% 
%      for i = 1:partes(1)
%          
%          for k = 1:length(data1)
%              if data1(k)<=tiempoA*(i)/partes(1)
%                  finalA = k;
%              end
%          end
%          
%          for j = 1:length(data2)
%              if data2(j)<=tiempoB*(i)/partes(1)
%                  finalB = j;
%              end
%          end
%         
%         subplot(3,2,i)
%         CrossCorrelationF1(data1(inicioA:finalA),data2(inicioB:finalB),name1,name2,0,6,i,NA,NB);
%         intervalosA = [intervalosA;inicioA finalA];
%         intervalosB = [intervalosB;inicioB finalB];
%         inicioA = finalA;
%         inicioB = finalB; 
%      end
%     intervalosA;
%     intervalosB;
% end









%%% intevarlos de diferentes tiempos
    intervalosA = [];
    intervalosB = [];


    if mosaico ==1
        tiempoA = data1(end);
        tiempoB = data2(end);
        inicioA = 1;
        inicioB = 1;
        [tiempo I] = min([tiempoA tiempoB]);
        
        finalB = length(data2);
        finalA = length(data1);
        
        finalB = 1;
        finalA = 1;

        
        panhandles = figure;
        set(panhandles,'Visible',VisibleFigure)

         
        [QQ PP]  = Grafic(partes(1));



            for i = 1:partes(1)
             diferenciaA = 0;
             diferenciaB = 0;
             
             for k = 1:length(data1)
                 if data1(k)<=tiempo*(i)/partes(1)
                     finalA = k;
                 end
             end

             for j = 1:length(data2)
                 if data2(j)<=tiempo*(i)/partes(1)
                     finalB = j;
                 end
             end

             if data1(inicioA)>=data2(inicioB)
                 diferenciaA = data1(inicioA)-data2(inicioB);
             else
                 diferenciaB = data2(inicioB)-data1(inicioA);
             end

            ax(i) = subplot(QQ,PP,i,'parent',panhandles);
            CrossCorrelationF(SavePdf,SaveFig,TimeFormat,BW,TimeWindow,data1(inicioA:finalA)*10,data2(inicioB:finalB)*10,name1,name2,0,6,i,length(data1),length(data2));

            inicios = [ i*10000*60 data1(inicioA) data2(inicioB);...
                        i*10000*60 diferenciaA diferenciaB]/(10000*60);

            intervalosA = [intervalosA;inicioA finalA];
            intervalosB = [intervalosB;inicioB finalB];
            inicioA = finalA;
            inicioB = finalB; 
         end
         linkaxes(ax,'y')
        NA;
        NB;
        intervalosA;
        intervalosB;
        newname = strcat(name1(1:end-4),'-',name2(1:end-4),'_CC_time');
        if SaveFig
            savefig(newname)
        end
        if SavePdf
            saveas(panhandles,strcat(name1(1:end-4),'-',name2(1:end-4),'_CC_','time'),'pdf')
        end
    end









end