% % clear
% % close all
% % 
% % load nombrecarpetas
% % load nombrearchivos
% % load snow
% % load cc
% % 
% % 
% % 
% % a = nombresSNOW{:,7};
% % % a = [a;a;a;a;a;a;a;a;a;a;a;a;a;a;a;a];
% % a = [a;a];
% % a = [a;a];
% % a = [a;a];
% % 
% % 
% % A = num2cell(1:10000)';
% % reportpartes1(A,3,'grupo1');



function reportpartes1(names,metodo,groupname)




N = length(names);


if metodo ==1;
    title = strcat('Analysed files Discharge Pattern','--',groupname);
    namesavefile = strcat('Report Files single','_',groupname);
    set(0,'DefaultTextFontSize',11)
end

if metodo ==2;
    title = strcat('Analysed files Connectivity - CC','--',groupname);
    namesavefile = strcat('Report Files CC','_',groupname);
    set(0,'DefaultTextFontSize',11)
end

if metodo ==3;
    title = strcat('Analysed files Connectivity - JISD','--',groupname);
    namesavefile = strcat('Report Files JPSD','_',groupname);
    set(0,'DefaultTextFontSize',6)
end




% Title






if metodo==1 | metodo ==2 |metodo==3
    % Single Neuron Analysis
    % primera col
    
    
    if N<=38
        figure;
        a = gcf;
        set(a,'Visible','off')
        set(a,'Position',[680 200 600 800]) %[680 558 800 1000]
            
        dim1 =[0.0 1-0.02 0.250 .02];
        annotation('textbox',dim1,'String',title,'FitBoxToText','on')
        dim1 =[0.0 1-0.06 0.250 .02];
        annotation('textbox',dim1,'String',names,'FitBoxToText','on')
        saveas(gcf,namesavefile,'pdf')
        return
    else

        for i = 1:(floor(N/78)+1)
            
            figure;
            a = gcf;
            if i<=1
                 dim1 =[0.0 1-0.02 0.250 .02];
                 annotation('textbox',dim1,'String',title,'FitBoxToText','on')
            end
            
            set(a,'Visible','off')
            set(a,'Position',[680 200 600 800]) %[680 558 800 1000]
            
            
            
            
            dim1 =[0.0 1-0.06 0.250 .02];
            if 39+(i-1)*78>N
                annotation('textbox',dim1,'String',names((1+(i-1)*78:(end))),'FitBoxToText','on')
                saveas(gcf,strcat(namesavefile,'_',char(string(i))),'pdf')
                close
                break
                
            else
                annotation('textbox',dim1,'String',names((1:39)+(i-1)*78),'FitBoxToText','on')
            end
            
            
            
            
            
            
            
            
            dim1 =[0.5 1-0.06 0.250 .02];
            if (78)+(i-1)*78>N  
                annotation('textbox',dim1,'String',names(((40+(i-1)*78):end)),'FitBoxToText','on')
            else
                annotation('textbox',dim1,'String',names((40:78)+(i-1)*78),'FitBoxToText','on')
            end

            saveas(gcf,strcat(namesavefile,'_',char(string(i))),'pdf')
            close figure 1
        end
        
        for i =1:(floor(N/78)+1)
            namesforpdf{i,1} = strcat(namesavefile,'_',char(string(i)),'.pdf');
        end
        
        append_pdfs(strcat(namesavefile,'.pdf'),namesforpdf{:})
        
        delete(namesforpdf{:}) 
        
    end
    


    
end

if metodo ==3
end












end