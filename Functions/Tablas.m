function y = Tablas(array,v)
N = length(array);

if v == 0
    return
end

if v ==3
    % 0.33
    for i=1:N
    set(0,'DefaultTextFontSize',13)
    if i == 7
        dim1 =[.0 1-(i+1)*0.05 0.75 .001];
        annotation('textbox',dim1,'String','')
        dim1 =[.0 1-(i+1)*0.05+0.001 0.75 .001];
        annotation('textbox',dim1,'String','')
        dim1 =[.0 1-(i+1)*0.05-0.001 0.75 .001];
        annotation('textbox',dim1,'String','')
        dim1 =[.0 1-(i+1)*0.05+0.0005 0.75 .001];
        annotation('textbox',dim1,'String','')
        dim1 =[.0 1-(i+1)*0.05-0.0005 0.75 .001];
        annotation('textbox',dim1,'String','')
    end
    dim1 =[.0 1-(i+1)*0.05 0.5 .05];
    annotation('textbox',dim1,'String',string(array(i,1)))
    dim1 =[.5 1-(i+1)*0.05 0.25 .05];
    %annotation('textbox',dim1,'String','Media')
    if i >1
        annotation('textbox',dim1,'String',string(array(i,2)))
    end
    
        if i>=12
            dim1 =[.75 1-(i+1)*0.05 0.2 .05];
            annotation('textbox',dim1,'String',string(array(i,3)))
        end
    end


    return
end
    
if v==4    
    set(0,'DefaultTextFontSize',10)
    for i =1:N
        
        dim1 =[.65 .92-i*0.04 0.15 .04];
        annotation('textbox',dim1,'String',string(array(i,1)))
        dim1 =[.8 .92-i*0.04 0.1 .04];
        annotation('textbox',dim1,'String',string(array(i,2)))
        dim1 =[.74 .9-i*0.04 0.15 .04];
        %annotation('textbox',dim1,'String',string(array(i,3)))
    end
    return
end
    
% InterSpikeInterlvals
if v==5
    for i = 1:N
        set(0,'DefaultTextFontSize',10)
        dim1 =[.62 .92-i*0.05 0.15 .05];
        annotation('textbox',dim1,'String',string(array(i,1)))
        dim1 =[.77 .92-i*0.05 0.13 .05];
        annotation('textbox',dim1,'String',string(array(i,2)))
    end

    
    
    return
end


if v==8    
    set(0,'DefaultTextFontSize',9)
    for i =1:N
        dim1 =[.55 .92-i*0.045 0.14 .045];
        annotation('textbox',dim1,'String',string(array(i,1)))
        dim1 =[.69 .92-i*0.045 0.12 .045];
        annotation('textbox',dim1,'String',string(array(i,2)))
        dim1 =[.81 .92-i*0.045 0.09 .045];
        annotation('textbox',dim1,'String',string(array(i,3)))
    end
    return
end
    
% Fractal
if v==9
    for i = 1:N
        set(0,'DefaultTextFontSize',10)
        dim1 =[.6 .92-i*0.05 0.22 .05];
        annotation('textbox',dim1,'String',string(array(i,1)))
        dim1 =[.82 .92-i*0.05 0.08 .05];
        annotation('textbox',dim1,'String',string(array(i,2)))
    end

    
    
    return
end

% Poncare and phase
if v ==1
    for i = 1:N
        set(0,'DefaultTextFontSize',10)
        dim1 =[.69 .92-i*0.05 0.115 .05];
        annotation('textbox',dim1,'String',string(array(i,1)))
        dim1 =[.805 .92-i*0.05 0.1 .05];
        annotation('textbox',dim1,'String',string(array(i,2)))
    end
end

end