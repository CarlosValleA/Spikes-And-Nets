% clear
% close all
% name1 = '170517Bg1c1.txt';
% name2 = '170517Bg1c2.txt';
% a = importdata(name1);
% b = importdata(name2);
% Hz = 22000;
% 
% 
% DoubleRaster1(a,b,Hz,name1,name2)

function DoubleRaster(TimeFormat,data1,data2,Hz,name1,name2,mosaico)

% data1 = data1/Hz;  % segundos 
% data1 = data1/60;
% 
% data2 = data2/Hz;
% data2 = data2/60;

tiempoA = data1(end);
tiempoB = data2(end);
inicioA = 1;
inicioB = 1;
[tiempo I] = min([tiempoA tiempoB]);

finalB = 1;
finalA = 1;



n=mosaico*15;


for h = 1:mosaico
    panhandles = figure;
    panhandles.Visible = 'off';
    for i = 1:15
        diferenciaA = 0;
        diferenciaB = 0;
        for k =1:length(data1)
            if data1(k)<=tiempo*(i+(h-1)*15)/n
                finalA = k;
            end
        end

        for j =1:length(data2)
            if data2(j)<=tiempo*(i+(h-1)*15)/n
                finalB = j;
            end
        end
        subplot(15,1,i,'parent',panhandles);
        A = data1(inicioA:finalA);
        B = data2(inicioB:finalB);
        if A(1)<A(end) | B(1)<B(end)
            hold on
            stem(A,ones(1,length(A)),'Marker','none','Color','blue')
            set(gca,'ytick',[])
            stem(B,ones(1,length(B)),'Marker','none','Color','red')
            set(gca,'ytick',[])
            ylim([-0.5 1.5])
            xlim([min([A(1) B(1)]), max([A(end) B(end)])])
            set(gca,'XTick',linspace(min([A(1) B(1)]),max([A(end) B(end)]),4))
            set(gca,'xticklabel',round(linspace(min([A(1) B(1)]),max([A(end) B(end)]),4),2,'significant'))   


            hold off
        else
             stem([ ],[],'Marker','none')
             set(gca,'XTick',0.5)
             set(gca,'xticklabel','No data')   
             set(gca,'ytick',[])

        end



        inicioA = finalA;
        inicioB = finalB;

    end


    


   
    xlabel("Time (" + TimeFormat + ")",'FontSize',10)
    set(gcf,'Units','inches',...
        'Position',[0 0 8 11])
    set(gca,'fontsize',12) 
    titulo = {'Double Raster plot ' + string(name1)+ ' (Blue) ','                               '+string(name2)+' (Red) '};
    
    a = annotation('textbox',[.35 .5 0.5 0.5],'String',titulo,'FitBoxToText','on');
    a.FontSize = 14;
    saveas(gcf,strcat(name1(1:end-4),'-',name2(1:end-4),'_RP_',char(string(h))),'pdf')
    close figure 1
end
end