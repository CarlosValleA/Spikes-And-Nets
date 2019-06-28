% close all
% clear
% 
% name1 = '180517BgC2.txt';
% name2 = '180517BgC3.txt';
% name3 = '180517BgC1.txt';
% 
% data1 = importdata(name1);
% data2 = importdata(name2);
% data3 = importdata(name3);
% 
% data1 = data1(1:200);
% data2 = data2(1:200);
% data2 = data3(1:200);
% 
% Folder = dir('*.txt');
% snow1(data1,data2,data3,name1,name2,name3,1,0);


function [maximo] = snow(SaveFig,TimeFormat,BW,TimeWindow,A,B,C,name1,name2,name3,mosaico,varargin)

visible_figure  = 'off';
maximo=1;

A = A*0.1;
B = B*0.1;
C = C*0.1;
NA = length(A);
NB = length(B);
NC = length(C);


TN = NA*NB*NC;


MX = TimeWindow; %time window
MAX = MX + (MX*35)/100;



% for H = -MX:R:MX
%     plot([H -MX], [H J])
%     plot([-MX H ], [M H])
%     hold on
% end

D = [0 0];



for K = 1:NA
    for Q = 1:NB
        Y = B(Q)-A(K);
        if Y < -MX
            CO = Q;
            continue
        end
        if Y > MX 
            break
        end
        
        X = ((C-A(K))-(B(Q)-C))*.5773502;
        
        x = abs(X)>MX;
        X(x==1)=[];


        D=[D; X ones(length(X),1)*Y];
    end
end

% whos D
% n_A = A;
% n_B = B';
% n_C(1,1,:) = C;
% 
% X = ((n_C-n_A)-(n_B-n_C))*.5773502;
% 
% Values  =[];
% Y = n_B - n_A;
% si1 = ((Y) >=-MX & (Y)<=MX);
% for  i = 1:size(X,3)
%     
%     x = abs(X(:,:,i))>MX & si1;
%     
%     
%     bb = [X(x) Y(x)];
%   
%     Values = [Values; bb];
% end
% 
% D = Values;
% 
% whos D

















% whos D
% 
% index = (B-A'<=MX) & (B-A' >=-MX);
% [K, Q] = find(index==1);
% X = ((C-A')-(B-C))*5773502;
% new_X = zeros(length(K),2);
% 
% for i = 1:length(K)
%     new_X(i,:) = [X(K(i),Q(i)) 1];
% end
% 
% 
% 
% 
% D = new_X;
% 
% whos D
% 
% 
% whos X index







%scatter(D(:,1),D(:,2 ))


partes = cell2mat(varargin) ;
newname = strcat(name1(1:end-4),'-',name2(1:end-4),'-',name3(1:end-4),'_JISD');



if sum(size(partes))==2 && mosaico~=1
    figure;
    a= histogram2(D(:,1),D(:,2),[20 20],'FaceColor','flat','Normalization','probability','FaceAlpha',0.8,...
    'ShowEmptyBins','on','Normalization','probability','BinWidth',[BW BW]);
    zlabel('Percentage of Intervals')

    
    
    
    view([-43.50000 60.13334])
    title('JISD of ' +string(name1(1:end-4))+' (A),'+string(name2(1:end-4))+' (B) and '+string(name3(1:end-4))+' (C)' )
    ax = gca;
    ax.XTick = [-MX:MX/2:MX];
    ax.YTick = [-MX:MX/2:MX];
    ax.XTickLabel = {-MX,'BC','0'+string(TimeFormat),'CA',MX};
    ax.YTickLabel = {-MX,-MX/2,'AB',MX/2,MX};
    set(gcf,'Visible',visible_figure)

    
    
    
    
    S1 = D;
    if SaveFig
        savefig(newname)
    end
    save(strcat(newname,'.txt'),'-ascii','S1')

end

if sum(size(partes))>2
    
    a = histogram2(D(:,1),D(:,2),[20 20],'FaceColor','flat','Normalization','probability','FaceAlpha',0.8,...
    'ShowEmptyBins','on','Normalization','probability','BinWidth',[BW BW]);
    maximo = a.Values;
    maximo = max(maximo(:));
    zlabel({'Percentage of','Intervals'})

    zlim([0 0.02])
    view([-43.50000 40.13334])
    ax = gca;
    ax.XTick = [-MX:MX/2:MX];
    ax.YTick = [-MX:MX/2:MX];
    ax.XTickLabel = {-MX,'BC','0'+string(TimeFormat),'CA',MX};
    ax.YTickLabel = {-MX,-MX/2,'AB',MX/2,MX};

    set(gcf,'Visible',visible_figure)

    
   title({char(string('('+string(partes(2))+') A='+string(round((NA)*10000/partes(3))/100)+'%')),...
        char(string('    B='+string(round((NB)*10000/partes(4))/100)+'%')),...
        char(string('       C='+string(round((NC)*10000/partes(5))/100)+'%'))})
    
    newname = strcat(name1(1:end-4),'-',name2(1:end-4),'-',name3(1:end-4),'_JISD',char(string(partes(2))));
    S1 = D;
    save(strcat(newname,'.txt'),'-ascii','S1')

end








intervalosA = [];
intervalosB = [];
intervalosC = [];

if mosaico ==1
    tiempoA = A(NA);
    tiempoB = B(NB);
    tiempoC = C(NC);
    inicioA = 1;
    inicioB = 1;
    inicioC = 1;
    
    tiempo = min([tiempoA tiempoB tiempoC]);
%     f= figure;
%     p = uipanel('Parent',f,'BorderType','none');
%     p.Title = 'AutoCorrelation '+string(name1(1:end-4))+' y ' ...
%         +string(name2(1:end-4))+' (time '...
%         +string(round(data1(end)/(100*60))/(100))...
%         +string(round(data2(end)/(100*60))/(100))+'min)';
%     p.TitlePosition = 'centertop'; 
%     p.FontSize = 12;
%     p.FontWeight = 'bold';

     panhandles = figure;
     set(panhandles,'units','normalized','position',[1 0 0.4*1.2941 0.8])
     maximos = [];
     [QQ PP]  = Grafic(partes(1));
     finalA = 1;
     finalB = 1;
     finalC = 1;
     for i = 1:partes(1)
      
         diferenciaA = 0;
         diferenciaB = 0;
         diferenciaC = 0;
         for k = 1:NA
             if A(k)<=tiempo*(i)/partes(1)
                 finalA = k;
             end
         end
         
         for j = 1:NB
             if B(j)<=tiempo*(i)/partes(1)
                 finalB = j;
             end
         end
         
         for h = 1:NC
             if C(h)<=tiempo*(i)/partes(1)
                 finalC = h;
             end
         end
         
         
       
         
         
        

        ax(i)= subplot(QQ,PP,i,'parent',panhandles);
        [maxvalor]=snow(SaveFig,TimeFormat,BW,TimeWindow,A(inicioA:finalA)*10,B(inicioB:finalB)*10,C(inicioC:finalC)*10,name1,name2,name3,0,6,i,NA,NB,NC);
        maximos = [maximos; maxvalor];
        %snow1(A(inicioA:finalA)-A(inicioA),B(inicioB:finalB)-B(inicioB),C(inicioC:finalC)-C(inicioC),name1,name2,name3,0,6,i,NA,NB);
        intervalosA = [intervalosA;inicioA finalA];
        intervalosB = [intervalosB;inicioB finalB];
        intervalosC = [intervalosC;inicioC finalC];
        inicioA = finalA;
        inicioB = finalB; 
        inicioC = finalC;
        
     end
     Z = max(maximos(:));
     for i = 1:partes(1)
         a = ax(i);
         a.ZLim=[0 Z];
         
         
     end
     newname = strcat(name1(1:end-4),'-',name2(1:end-4),'-',name3(1:end-4),'_JISD_time');
     if SaveFig
        savefig(newname)
     end 
    
end





end
