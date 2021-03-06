% clear
% close all
% name = '170517Bg1c2.txt';
% data = importdata(name);
% 
% AutoEspectroF1(data,name,0,6);



function [P Frecs] =AutoEspectroF(maxf,SavePdf,SaveFig,TimeFormat,data,name,mosaico,varargin)

switch TimeFormat
    case 'ms'
        data;
    case 'sec'
        data = data*1000;
    case 'min'
        data = data*1000*60;
    case 'days'
        data = data*1000*60*24;
end




visibleFigure = 'off';

name = char(name);
data = data*0.1;
N = length(data);
bg  = 5000;
D = zeros(bg,1);
for i = 1:N
    for k = i+1:N
        dife = round(data(k)-data(i));
        if dife<=bg & dife~=0
            D(dife)=D(dife)+1;
        end
    end
end

E = D;
SU = sum(D(:));
ME = SU/bg;
E = E - ME;

% Fourier
C = 0; S = 0;

max_f = maxf*5;
for I = 1:max_f
    for G = 1:bg
        C = C + (E(G)*cos(I*2*pi*G/bg));
        S = S + (E(G)*sin(I*2*pi*G/bg));
    end
    C = C/max_f;
    S = S/max_f;
    P(I) = ((S.*S)+(C.*C))*max_f;
end














Q = 1.5; % 1.5 filtro contra armonico

a = conv(P.^(Q+1),[1 1 1 1 1 ],'same');
b = conv(P.^Q,[1 1 1 1 1],'same');
armonica = a./b;


armonica = conv(P,ones(1,5)/5,'same'); % average movil



    function [tabla t low high] = maxi(f,P,v)
        
        Frecs = findmax(f',P');
        
        N = length(Frecs);
        if N <5
            Frecs = Frecs(1:N,:);
        else
            Frecs = Frecs(1:5,:);
        end
        
        
        ThreshHold =  mean(P) + std(P);
        
        
    


        Fisher = sum(P);
        Frecs(:,3) = round(100*(length(P)-1)*Frecs(:,1)/Fisher)/100;
        tabla = [{'S. Density' 'Peak (Hz)' 'Fisher'}; num2cell(Frecs);
                ];
        tabla;
        Tablas(tabla,v);
 

    end








partes = cell2mat(varargin) ;
newname = strcat(name(1:end-4),'_AS');


if sum(size(partes))==2 && mosaico~=1
    
    figura =figure;
    f = 0.2*(0:max_f-1);
    hold on
    ThreshHold =  mean(log(armonica)) + std(log(armonica));
    plot(f,log(armonica))
    plot(f,ones(1,length(armonica))*ThreshHold)
    xlim([0 max_f*0.2])
    %text(diff(f([1 end]))/2,ThreshHold+0.1,'$\bar{X} + \sigma $ ','interpreter','latex')

    hold off
    xlabel('Frequency (Hz)')
    ylabel('Log of Spectral Density')
    title('Autospectrum '+string(name(1:end-4)))
    dim = [.2 .74 .25 .15];
    set(figura,'Visible',visibleFigure)
    S0=maxi(f,log(armonica),8);
%     S0
%     save(strcat(newname+string('T'),'.csv'),'-ascii','S0')
    
    S1=[P' f'];
    save(strcat(newname,'.txt'),'-ascii','S1')
    
    %export_fig(newname,'-pdf')
    if SaveFig
        savefig(newname)
    end
    if SavePdf
        saveas(figura,strcat(name(1:end-4),'_AS'),'pdf')
    end

end

if sum(size(partes))>2
    f = 0.2*(0:max_f-1);
    plot(f,log(armonica))
    xlim([0 max_f*0.2])
    xlabel('Frequency (Hz)')
    ylabel('Log of S. Density')

    dim = [.2 .74 .25 .15];

    
    
    
    title('('+string(partes(2))+') data = '+string(round(N*10000/partes(3))/100)+'%')
    
    newname = strcat(name(1:end-4),'_AS',char(string(partes(2))));
    
    [frecs] = maxi(f,armonica,0);
    
    
%     S0.('AS') = frecs;
%     save(strcar(newname+string('T'),'.txt'),'-struct','S0')
    
    S1 = [P' f'];
    P';
    save(strcat(newname,'.txt'), '-ascii', 'S1')
end

intervalos =[];



if mosaico ==1
    tiempo = data(end);
    
    inicio=1;
%     f = figure;
%     p = uipanel('Parent',f,'BorderType','none');
%     p.Title = 'Auto-Espectrum '+string(name(1:end-4))+' (time '+string(round(data(end)/(100*60))/(100))+'min)';
%     p.TitlePosition = 'centertop'; 
%     p.FontSize = 12;
%     p.FontWeight = 'bold';
    panhandles = figure;
    set(panhandles,'Visible',visibleFigure)
    [QQ PP]  = Grafic(partes(1));
    for i=1:partes(1)
        
        for k=1:length(data)
            if data(k)<=tiempo*(i)/partes(1)
                final = k;
            end
        end
        
        ax(i) = subplot(QQ,PP,i,'parent',panhandles);
        AutoEspectroF(maxf,SavePdf,SaveFig,'ms',data((inicio:final))*10,name,0,6,i,N);
        intervalos = [intervalos;inicio final];
        inicio=final;
    
    end
    linkaxes(ax,'y')
    newname = strcat(name(1:end-4),'_AS_time');
    if SaveFig
    savefig(newname)
    end
    if SavePdf
        saveas(panhandles,strcat(name(1:end-4),'_AS','time'),'pdf')
    end
    intervalos;
    
end



















end