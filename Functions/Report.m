% 
% 
% load nombrecarpetas
% load nombrearchivos
% load snow
% load cc
% 
% handles = 1;
% 
% 
% 
% 
% 
% 
% 
% Files(nombresSNOW,foldername,1)

function  Files(names,foldername,method)


D = cellstr('');
nombrecarpeta = cellstr('');
contador = 1;
for i = 1:length(names)
    if ~isempty(names{i})
        D =[D ;  names(i)];
        nombrecarpeta  = [nombrecarpeta ;foldername(i)];
    end
    
    
end
D(1) = '';
D;
nombrecarpeta(1)='';



if method == 0
    set(0,'DefaultTextFontSize',10)
    set(0,'DefaultTextFontName','Arial')
    savedfilename = 'Analyzed Files';
else
    set(0,'DefaultTextFontSize',6)
    savedfilename = 'Analyzed Files CC';
end








figure;
a = gcf;
set(a,'Visible','off')
set(a,'Position',[680 558 600 800]) %[680 558 800 1000]



N = length(nombrecarpeta);

if N <=8
    for i = 1:N
        if i <=4
            dim1 =[0.250*(i-1) 1-0.02 0.250*i .02];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(i-1) 1-0.5 0.250*i .48];
                annotation('textbox',dim1,'String',D{i})
            end
        else
            h = i-4;
            dim1 =[0.250*(h-1) 0 0.250*(h) .50];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(h-1) 0 0.250*h .48];
                annotation('textbox',dim1,'String',D{i})
            end
        end
    end
    
    %save pdf
    saveas(gcf,savedfilename,'pdf')
    close
    
else
    
    for i = 1:8
        if i <=4
            dim1 =[0.250*(i-1) 1-0.02 0.250*i .02];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(i-1) 1-0.5 0.250*i .48];
                annotation('textbox',dim1,'String',D{i})
            end
        else
            h = i-4;
            dim1 =[0.250*(h-1) 0 0.250*(h) .50];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(h-1) 0 0.250*h .48];
                annotation('textbox',dim1,'String',D{i})
            end
        end
    end
    saveas(gcf,strcat(savedfilename,' 1'),'pdf')
    close
    
    %save pdf
    figure;
    a = gcf;
    set(a,'Visible','off')
    set(a,'Position',[680 558 600 800])
    
     for i = 9:N
        q = i-8; 
        if q <=4
            dim1 =[0.250*(q-1) 1-0.02 0.250*q .02];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(q-1) 1-0.5 0.250*q .48];
                annotation('textbox',dim1,'String',D{i})
            end
        else
            h = q-4;
            dim1 =[0.250*(h-1) 0 0.250*(h) .50];
            annotation('textbox',dim1,'String',nombrecarpeta{i})
            for j = 1:length(D(i))
                dim1 =[0.250*(h-1) 0 0.250*h .48];
                annotation('textbox',dim1,'String',D{i})
            end
        end
    end
    saveas(gcf,strcat(savedfilename,' 2'),'pdf')
    close
    
end








end





















