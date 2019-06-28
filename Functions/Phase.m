% clear
% close all
% name = '180517BgVC3.txt';
% data = importdata(name);
% Phase1(data,name,0,6);
function [y grafico] = Phase(SavePdf,SaveFig,TimeFormat,data,name,mosaico,varargin)
visible_figure = 'off';
y = 0;
grafico = 0;
name = char(name);
M = data;
N = length(M);
grafico = [];

i = 0;
I = zeros(N,1);
RES = 0.1;
% G = input('Which Order: ');
% D = input('Poincare/Phase 0/1: ');
G = 1;
D = 0;

if D == 0
    T = 'Phase';
    RI = 1;
    RF = N;
end
if D ==1
    T = 'Phase';
%   RI = input('Start Spike: ');
%   RF = input('End Spike: ');
    RI = 1+i;
    RF = 500+i;
end


SU = 0;
q = 0;
for K = RI:G:RF
    if (K+G) > RF
        break
    end
    if RF>N 
        return
    end
    I(K) = M(K+G)-M(K);
    if I(K) > q
        q = I(K);
    end
    SU = SU +I(K);
end

ME = SU/(N/G); WR = q; SU = 0;

for K = 1:N
    SU = SU + (I(K)-ME)^2;
end

DS = ((SU)/(N-1))^0.5;


X = 0;
Y = 0;
if mosaico == 0
    for K = RI:RF-2
        Y1 = I(K)-I(K+1); X1 = I(K+1)-I(K+2);
        if Y1 > WR
            Y1 = WR;
        end

        if Y1 < -WR
            Y1 = -WR;
        end

        if X1 > WR
            X1 = WR;
        end

        if X1 <-WR
            X1 = -WR;
        end

        
        grafico = [grafico;X1 Y1];
        X = X1; Y = Y1;
        



    end

   
end

modulo = sum(grafico,2).^2;
[maximovalor position] = max(modulo(:));

if length(grafico)~=0
    if modulo(1)/maximovalor >0.5
        grafico(position,:)=[];
    end
end






name1 = genvarname(name);
namea = name1(1:end-7);



% T = {'N'    N+1-G;...
%     'Mean'                   round(ME*RES*10)/10;...
%     'DS'                     round(DS*RES*10)/10;...
%     'CD'                     round(((DS^2)/ME)*RES*10)/10;...
%     'Spikes/s'               round(10*N/((M(N)-M(1))/10000))/10;...
%     'Window +/-'             round(WR*RES*10)/10;...
%     'Order'                  round(G*10)/10};


T = {'N'    N+1-G;...
    'Mean'                   round(ME*RES*10)/10;...
    'SD'                     round(DS*RES*10)/10;...
    'CD'                     round(((DS^2)/ME)*RES*10)/10;...
    'Sp/s'               round(10*N/((M(N)-M(1))/10000))/10;...
    'Window'             round(WR*RES*10)/10;...
    'Order'                  round(G*10)/10};











partes = cell2mat(varargin) ;


newname = strcat(name(1:end-4),'_PHA');


if sum(size(partes))==2 & mosaico~=1
    figura = figure;
    if length(grafico)~=0
        plot(grafico(:,1),grafico(:,2),'k')
        xlabel('n+1 ISI (' + string(char(TimeFormat))+ ')')
        ylabel('n ISI (' + string(char(TimeFormat)) + ')')
        grid on
        set(figura,'Visible',visible_figure)
    end
    
    if D==1
    title('Phase Diagram '+string(name(1:end-4)))
    %y = table(T(:,1),T(:,2),'VariableNames',{'PhaseDiagram' namea});
    end
    if D==0
        title('Phase Diagram '+string(name(1:end-4)))
        %y = table(T(:,1),T(:,2),'VariableNames',{'PoincareDiagram' (namea)});
    end

    
    Tablas(T,1)
%     S0.('PO') = T;
%     save(newname+string('T'), '-struct', 'S0')
    
    S1 = grafico;
    save(strcat(newname,'.txt'),'-ascii','S1')

    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_PHA'),'pdf')
    end
end

if sum(size(partes))>2
   
    if length(grafico)~=0
        plot(grafico(:,1),grafico(:,2),'k')
        xlabel('n+1 ISI (' + string(char(TimeFormat))+ ')')
        ylabel('n ISI (' + string(char(TimeFormat)) + ')')
        grid on
        
    end
    
    
    
    title('('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    newname = strcat(name(1:end-4),'_PHA',char(string(partes(2))));
%     S0.('PO') = T;
%     save(newname+string('T'), '-struct', 'S0')
    
    S1 = grafico;
    save(strcat(newname,'.txt'),'-ascii','S1')


    
end






intervalos=[];

if mosaico ==1
    
   
    
    tiempo = data(end);
    
    inicio=1;
     %f = figure;
%     p = uipanel('Parent',f,'BorderType','none');
%     if D==1
%         p.Title = 'Phase Diagram '+string(name(1:end-4))+' (time '+string(round(data(end)/(100*60))/(100))+'min)';
%     end
%     if D==0
%         p.Title = 'Poincare Diagram'+string(name(1:end-4))+' (time '+string(round(data(end)/(100*60))/100)+'min)';
%     end
%      
%     
%     p.TitlePosition = 'centertop'; 
%     p.FontSize = 12;
%     p.FontWeight = 'bold';
    escale = 2;
    panhandle = figure;
    set(panhandle,'Visible',visible_figure)
    [QQ ,PP]  = Grafic(partes(1));
    for i=1:partes(1)
        
        for k=1:length(data)
            if data(k)<=tiempo*(i)/partes(1)
                final = k;
            end
        end
        
        ax(i)=subplot(QQ,PP,i,'parent',panhandle);
        
        [a ,valores] =Phase(SavePdf,SaveFig,TimeFormat,data((inicio:final)),name,0,6,i,length(data));
        
        intervalos = [intervalos;inicio final];
        inicio=final;
        if valores ==0 | length(valores) ==0;
            continue
        end
        if escale <= abs(max(valores(:))) | escale >=min(valores(:))
            if abs(max(valores(:)))> abs(min(valores(:)))
                escale = max(valores(:));
            else
                escale = min(valores(:));
            end
            
        end
        
        
    
    end
    set(panhandle,'Units','inches',...
        'Position',[5 5 9 12])
   
    for i=1:partes(1)
        subplot(QQ,PP,i)
        xlim([-abs(escale) abs(escale)])
        ylim([-abs(escale) abs(escale)])
    end
    
    newname = strcat(name(1:end-4),'_PHA_time');
    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(panhandle,strcat(name(1:end-4),'_PHA','time'),'pdf')
    end
    intervalos;
    
end










end