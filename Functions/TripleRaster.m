% clear
% close all
% name1 = '170517Bg1c1.txt';
% name2 = '170517Bg1c2.txt';
% name3 = '170517Bg2c2.txt';
% a = importdata(name1);
% b = importdata(name2);
% c = importdata(name3);
% Hz = 22000;
% 
% TripleRaster1(a,b,c,Hz,name1,name2,name3)

function TripleRaster(TimeFormat,A,B,C,Hz,name1,name2,name3,mosaico)


% A = A/Hz;
% A = A/60;
% 
% B = B/Hz;
% B = B/60;
% 
% C = C/Hz;
% C = C/60;



NA = length(A);
NB = length(B);
NC = length(C);

 finalA = 1;
 finalB = 1;
 finalC = 1;
 
tiempoA = A(NA);
tiempoB = B(NB);
tiempoC = C(NC);
inicioA = 1;
inicioB = 1;
inicioC = 1;

tiempo = min([tiempoA tiempoB tiempoC]);



n=mosaico*15;
 
for hh = 1:mosaico
     panhandles = figure;
     panhandles.Visible = 'off';
     for i = 1:15
         diferenciaA = 0;
         diferenciaB = 0;
         diferenciaC = 0;
         for k = 1:NA
             if A(k)<=tiempo*(i+(hh-1)*15)/n
                 finalA = k;
             end
         end

         for j = 1:NB
             if B(j)<=tiempo*(i+(hh-1)*15)/n
                 finalB = j;
             end
         end

         for h = 1:NC
             if C(h)<=tiempo*(i+(hh-1)*15)/n
                 finalC = h;
             end
         end
        subplot(15,1,i,'parent',panhandles);
        data1 = A(inicioA:finalA);
        data2 = B(inicioB:finalB);
        data3 = C(inicioC:finalC);
        if data1(1)<data1(end) | data2(1)<data2(end) | data3(1)<data3(end)
            hold on
            stem(data1,ones(1,length(data1)),'Marker','none','Color','blue')
            set(gca,'ytick',[])
            stem(data2,ones(1,length(data2)),'Marker','none','Color','red')
            set(gca,'ytick',[])
            stem(data3,ones(1,length(data3)),'Marker','none','Color','green')
            set(gca,'ytick',[])
            xlim([min([data1(1) data2(1) data3(1)]), max([data1(end) data2(end) data3(end)])])
            set(gca,'XTick',linspace(min([data1(1) data2(1) data3(1)]),max([data1(end) data2(end) data3(end)]),4))
            set(gca,'xticklabel',round(linspace(min([data1(1) data2(1) data3(1)]),max([data1(end) data2(end) data3(end)]),4),2,'significant'))
            ylim([-0.5 1.5])
            hold off
        else
             stem([ ],[],'Marker','none')
             set(gca,'XTick',0.5)
             set(gca,'xticklabel','No data')   
             set(gca,'ytick',[])
        end

        xlim([min([data1(1) data2(1) data3(1)]), max([data1(end) data2(end) data3(end)])])


        inicioA = finalA;
        inicioB = finalB;
        inicioC = finalC;


     end

               
        xlabel("Time (" + TimeFormat + ")",'FontSize',10)
        set(gcf,'Units','inches',...
            'Position',[0 0 8 11])
        titulo = {'Triple Raster plot ' + string(name1)+' (blue)','                             '+string(name2)+' (red)','                             '+string(name3)+ ' (green)'};
        
        a = annotation('textbox',[.35 .5 0.5 0.5],'String',titulo,'FitBoxToText','on');
        a.FontSize = 12;
        saveas(gcf,strcat(name1(1:end-4),'-',name2(1:end-4),'-',name3(1:end-4),'-','_RP_',char(string(hh))),'pdf')  



        close figure 1





end





end