% clear
% close all
% name = '170517Bg1c1.txt';
% data = importdata(name);
% 
% FractalF1(data,name,0,6);
function y = FractalF(SavePdf,SaveFig,TimeFormat,TimeWindow,data,name,mosaico,varargin);
Visible_figure = 'off';
name = char(name);
datos = data;
SU = 0;
N = length(data);


N = N - 2;
%PO = input('Number of markers: ')
%W = input('Interval Window: ');
W = TimeWindow;%% Recomendado 10 ms
PO = 10;


% for NO = 1:PO
%     KL(NO) = KL(NO)/W;
%     
% end
I = [];
for k = 1:N
    I(k) =(data(k+1)-data(k))/10000; 
end

Z = 1; K = 1;

while 1
    
    DD = 0; L = 0; C = 0; X = 0; F = 0;
    X = X + 1; 
    
    if length(I)==0
        y =[];
        return
    end
    Y = I(K);
    K = K + 1;
    X0 = X; Y0 = Y;
    while 1
        C = C + 1; XI = X; YI = Y;

        if C==W
            break
        end

        X = X + 1; Y = I(K); K = K + 1;
        D1 = ((X - X0)^2 + (Y - Y0)^2).^(0.5);
        if D1 > DD 
            DD = D1;
        end
        L = L + ((X - XI)^2 + (Y - YI)^2)^(0.5);
        if C == 1 
            continue
        end
        F = log10(C)/(log10(C) + log10(DD/L));

    end

    if F > 2
        F = 2;
    end

    if  F<1
        F = 1;
    end
    data(Z) = F; Z = Z +1;

    if Z > (N/W)
        Z = Z -1;
        break
    end
    
end




for K = 1:Z
    SU = SU + data(K);
end
    

ME = SU/Z ; V = 0;


for K=1:Z
    V = V +(ME - data(K)).^(2);
end
DS = (V/(K-1))^(0.5);
CV = DS*100/ME;



NT = [N;W;ME;DS;CV];
 

T = {'Analysed ISI'             round(N*100)/100;...
    'ISIWindow (spikes)'       round(W*100)/100;...
    'D mean'                    round(ME*100)/100;...
    'SD'                        round(DS*100)/100;...
    'CV'                        round(CV*100)/100};

figura = figure;
plot(data(1:Z))
xlim([0 Z])
ylim([0.9 1.5])
ylabel('Sequential Fractal Dimension (SFD)')
xlabel('Interval Windows')

 
name1 = genvarname(name);
name1 = name1(1:end-7);

title('Sequential Fractal Dimension '+string(name(1:end)))
set(figura,'Visible',Visible_figure)
partes = cell2mat(varargin);

newname = strcat(name(1:end-4),'_FA');

if sum(size(partes))==2 & mosaico~=1
    %uitable('data',NT,'RowName',{'Analysed ISI','ISI Window','D mean','SD','CV'},'ColumnName',{name1},...
     %   'InnerPosition', [290 275 210 107],'BackgroundColor',[1 1 1 ;0.85 0.85 1],'ForegroundColor',[0 0 1]);
    Tablas(T,9)
%     S0.('FA') = T;
%     save(newname+string('T'),'-struct','S0')
    
    S1 = data(1:Z);
    save(strcat(newname,'.txt'),'-ascii','S1')
    
    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_FA'),'pdf')
    end
end

if sum(size(partes))>2
    title('('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    newname = strcat(name(1:end-4),'FA',char(string(partes(2))));
    
%     S0.('FA') = T;
%     save(newname+string('T'),'-struct','S0')
    S1 = data(1:Z);
    save(strcat(newname,'.txt'),'-ascii','S1')

end


intervalos=[];

if mosaico ==1
    tiempo = datos(end);
    
    inicio=1;
%     f = figure;
%     p = uipanel('Parent',f,'BorderType','none');
%     p.Title = 'Sequential Fractal Dimension '+string(name(1:end-4))+' (time '+string(round(datos(end)/(100*60))/(100))+'min)';
%     p.TitlePosition = 'centertop'; 
%     p.FontSize = 12;
%     p.FontWeight = 'bold';
    
    for i=1:partes(1)
        
        for k=1:length(datos)
            if datos(k)<=tiempo*(i)/partes(1)
                final = k;
            end
        end
        
        ax(i) = subplot(3,2,i);
        FractalF(SavePdf,SaveFig,TimeFormat,TimeWindow,datos((inicio:final)),name,0,6,i,length(datos));
        intervalos = [intervalos;inicio final];
        inicio=final;
    
    end
    linkaxes(ax,'y')
    newname = strcat(name(1:end-4),'_FA_time');
    if SaveFig
        savefig(newname)
    end
    intervalos;
    
end











 
end