% close all
% clear
% data = importdata('170517Bg1C1.txt');
% 
% 
%  SingleRaster1(data,22000,'170517Bg1c1.txt',2)

function SingleRaster(TimeFormat,data,name,mosaico)



data = data;




n = 15*mosaico;

inicio = 1;
final=1;
tiempo = data(end);

for h = 1:mosaico
    panhandle = figure;
    panhandle.Visible = 'off';
    for i =1:15
        for k =1:length(data);
            if data(k)<=tiempo*(i+(h-1)*15)/n
                final = k;
            end
        end

        subplot(15,1,i,'parent',panhandle);
        A =(data(inicio:final));
        if A(1)<A(end)
            stem(A,ones(1,length(A)),'Marker','none')
            
            
            %plot_spikes([0 1],A,'blue')
            xlim([A(1) A(end)])
            ylim([-0.5 1.5])
            set(gca,'XTick',linspace(A(1),A(end),4))
            set(gca,'xticklabel',round(linspace(A(1),A(end),4),2,'significant'))   
        else
            stem([ ],[],'Marker','none')
             set(gca,'XTick',0.5)
            set(gca,'xticklabel','No data')   
        end
        set(gca,'ytick',[])
        inicio = final;

    end
        xlabel("Time (" + TimeFormat + ")",'FontSize',10)
        set(panhandle,'Units','inches',...
            'Position',[0 0 8 11])
        titulo = 'Raster plot ' + string(name);
        a = annotation('textbox',[.35 .5 0.5 0.5],'String',titulo,'FitBoxToText','on');
        a.FontSize = 14;
        saveas(panhandle,strcat(name(1:end-4),'_RP_',char(string(h))),'pdf')
        close figure 1
        
        
end



function plot_spikes(range,data,color)
hold on
for i = 1:length(data)
     plot([data(i) data(i)],range,color)
end
hold off



