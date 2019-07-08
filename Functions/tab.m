function tab(n,handles)
switch n
    case 2
        SN = get(handles.BoxSnow,'value');
        CC = get(handles.BoxCC,'value');
        Methods = get(handles.BoxMethods,'value');
        
        set(handles.BoxSnow,'UserData',SN);
        set(handles.BoxCC,'UserData',CC);
        set(handles.BoxMethods,'UserData',Methods);
        
        files = get(handles.ListBoxFiles,'string');

        if strcmp(files,'No files Selected')
            %set(handles.Next,'UserData')
            msgbox('No Files Selected','Error','Error')
            return
        end

        if (SN==0 & CC==0 & Methods==0) 
            msgbox({'Chose Between' ,'Discharge Pattern', 'Connectivity - CC', 'Connectivity - JISD'},'Error','Error')
            return
        end
        if (SN==1 ||CC==1 ||Methods==1) 
            %set(hObject,'UserData',1)
            n = get(handles.Next,'UserData');
            set(handles.Next,'UserData',n+1)
        end
        
        if Methods==1
            set(handles.buttonMethods,'visible','on')
        end
        if SN == 1
            set(handles.buttonSN,'visible','on')
        end
        if CC ==1
            set(handles.buttonCC,'visible','on')
        end
        
        
        set(handles.BoxSnow,'visible','on')
        set(handles.BoxCC,'visible','on')
        set(handles.BoxMethods,'visible','off')
        set(handles.ListBoxFiles,'visible','off')
        set(handles.ClearFiles,'visible','off')
        set(handles.HelpMethods,'visible','off')
        set(handles.HelpMethods,'visible','off')
        set(handles.SelectFiles,'visible','off')
        set(handles.Title,'visible','off')
        set(handles.FigureButton,'visible','off')
        set(handles.Previous,'visible','on')
        set(handles.RUN,'visible','off')
        set(handles.Mosaic,'visible','off')
        set(handles.maxf,'visible','off')
        set(handles.maxfText,'visible','off')

        %set(handles.Analysis,'visible','off')
        set(handles.TIMETEXT,'visible','off')
        
        
        
        
        
        %File choose
        set(handles.RUN,'visible','off')
        set(handles.Mosaic,'visible','off')
        set(handles.SaveFolder,'visible','off')
        set(handles.SingleNeuronMethods,'visible','off')
        set(handles.RasterPanel,'visible','off')
        set(handles.Logo,'visible','off')
        set(get(handles.Logo,'children'),'visible','off')
        set(handles.TimeFormat,'visible','off')
        set(handles.FrecuencyFormat,'visible','off')
    
        %set(handles.FrecuencyFormatNumber,'visible','off')
        set(handles.spikes,'visible','off')
        set(handles.Home,'visible','on')
        set(handles.BinWidthText,'Visible','off')
        set(handles.ConnectivityMethods,'Visible','off')
        set(handles.TimeFormatNumber,'Visible','off')

        
        %show
        set(handles.uitableCC,'Visible','on')
        set(handles.CCfile,'visible','on')
        set(handles.GroupCC,'visible','on')
        set(handles.PanelCC,'visible','on')
        set(handles.Groups1,'visible','on')
        set(handles.Groups2,'visible','on')
        set(handles.Groups3,'visible','on')
        set(handles.Groups4,'visible','on')
        set(handles.Groups5,'visible','on')
        set(handles.Groups6,'visible','on')
        set(handles.Groups7,'visible','on')




        
        
        files =(get(handles.ListBoxFiles,'string'));
        
        N = length(files);
        grupos = get(handles.uitableCC,'data');
        grupos = grupos(:,2);
        if ischar(files);
            set(handles.uitableCC,'data',[{files} 1])
        else
            if isempty(grupos{1}) & isempty(grupos{2}) & isempty(grupos{3}) & isempty(grupos{4})
                set(handles.uitableCC,'data',[files num2cell(ones(N,1))])


            else
                set(handles.uitableCC,'data',[files grupos])


            end
        end
        
        
    case 1

        
        % Home
        %show
        set(handles.BoxSnow,'visible','on')
        set(handles.BoxCC,'visible','on')
        set(handles.BoxMethods,'visible','off')
        set(handles.ListBoxFiles,'visible','on')
        set(handles.ClearFiles,'visible','on')
        set(handles.HelpMethods,'visible','on')
        set(handles.HelpMethods,'visible','on')
        set(handles.SelectFiles,'visible','on')
        set(handles.Title,'visible','on')
        %set(handles.axes2,'visible','on')
        %set(get(handles.axes2,'children'),'visible','on')
        set(handles.Next,'visible','on')
        set(handles.FigureButton,'visible','on')
        %set(handles.Analysis,'visible','on')
        %set(handles.Logo,'visible','on')
        set(get(handles.Logo,'children'),'visible','on')
        set(handles.spikes,'visible','on')
    
        %hide
        set(handles.Previous,'visible','off')
%        set(handles.MFile,'Visible','off')
  %      set(handles.ListBoxMethods,'Visible','off')
        set(handles.buttonMethods,'visible','off')
        set(handles.buttonSN,'visible','off')
        set(handles.buttonCC,'visible','off')
        set(handles.uitableCC,'visible','off')
        set(handles.CCfile,'visible','off')
        set(handles.GroupCC,'visible','off')
        set(handles.PanelCC,'visible','off')
        set(handles.PanelCC2,'visible','off')
        set(handles.PanelCC3,'visible','off')
        set(handles.PanelCC4,'visible','off')
        set(handles.PanelCC5,'visible','off')
        set(handles.PanelCC6,'visible','off')
        set(handles.PanelCC7,'visible','off')
        set(handles.Groups1,'visible','off')
        set(handles.Groups2,'visible','off')
        set(handles.Groups3,'visible','off')
        set(handles.Groups4,'visible','off')
        set(handles.Groups5,'visible','off')
        set(handles.Groups6,'visible','off')
        set(handles.Groups7,'visible','off')
        set(handles.TimeFormatNumber,'Visible','off')
                set(handles.maxf,'visible','off')
        set(handles.maxfText,'visible','off')

       % set(handles.PanelMethods,'visible','off')
        %set(handles.uitableMethods,'Visible','off')
       % set(handles.PanelSnow,'visible','off')
        set(handles.RUN,'visible','off')
        set(handles.Mosaic,'visible','off')
        set(handles.SaveFolder,'visible','off')
        set(handles.SingleNeuronMethods,'visible','off')
        set(handles.RasterPanel,'visible','off')
        set(handles.TIMETEXT,'visible','off')
        set(handles.TimeFormat,'visible','off')
        set(handles.FrecuencyFormat,'visible','off')
        %set(handles.FrecuencyFormatNumber,'visible','off')
        set(handles.Home,'visible','off')
                set(handles.BinWidthText,'Visible','off')
        set(handles.ConnectivityMethods,'Visible','off')


        
        
    case 3
        
        n = get(handles.Next,'UserData');

        if n ==2 & get(handles.GroupCC,'UserData')==0;
            msgbox('You must generare a least a group of files','Error','Error')
            tab(2,handles)
            set(handles.Next,'UserData',2)
            return
        end
        names = GroupsFileNames(handles);
        foldername = GroupsFolderName(handles);
       for i = 1:112
            if isempty(foldername{i}) & ~isempty(names{i})
                msgbox('At least one folder name is empty','Error','Error')
                tab(2,handles)
                set(handles.Next,'UserData',2)
                return
            end
       end
       
        set(handles.RUN,'string','RUN')
        %Run
        set(handles.CCfile,'visible','off')
        set(handles.buttonMethods,'visible','off')
        set(handles.buttonCC,'visible','off')
        set(handles.buttonSN,'visible','off')
        set(handles.GroupCC,'visible','off')
       % set(handles.uitableMethods,'visible','off')
        set(handles.PanelCC,'visible','off')
        set(handles.PanelCC2,'visible','off')
        set(handles.PanelCC3,'visible','off')
        set(handles.PanelCC4,'visible','off')
        set(handles.PanelCC5,'visible','off')
        set(handles.PanelCC6,'visible','off')
        set(handles.PanelCC7,'visible','off')
        set(handles.Groups2,'visible','off')
        set(handles.Groups1,'visible','off')
        set(handles.Groups3,'visible','off')
        set(handles.Groups4,'visible','off')
        set(handles.Groups5,'visible','off')
        set(handles.Groups6,'visible','off')
        set(handles.Groups7,'visible','off')
        %set(handles.Analysis,'visible','off')
        set(handles.Logo,'visible','off')
        set(get(handles.Logo,'children'),'visible','on')
        set(handles.TIMETEXT,'visible','on')
        
        set(handles.TimeFormat,'visible','on')
        set(handles.FrecuencyFormat,'visible','on')
                set(handles.maxf,'visible','on')
        set(handles.maxfText,'visible','on')
 
        %set(handles.FrecuencyFormatNumber,'visible','on')
        set(handles.spikes,'visible','off')
        set(handles.Home,'visible','on')
        set(handles.BinWidthText,'Visible','on')

        set(handles.ConnectivityMethods,'Visible','on')

                set(handles.TimeFormatNumber,'Visible','on')

        set(handles.CCfile,'visible','off')
        set(handles.RUN,'visible','on')
        set(handles.uitableCC,'visible','off')
        set(handles.Next,'visible','off')
        set(handles.Mosaic,'visible','on')
        set(handles.SaveFolder,'visible','on')
        set(handles.SingleNeuronMethods,'visible','on')
         
        %if get(handles.BoxMethods,'value') ==1
            set(handles.SingleNeuronMethods,'visible','on')
            set(handles.RasterPanel,'OuterPosition',[0.598 0.081 0.35 0.135])
        %else
%             set(handles.SingleNeuronMethods,'visible','off')
%             set(handles.RasterPanel,'OuterPosition',[0.1 0.3 0.311 0.395])
           
        %end
        
        
        set(handles.RasterPanel,'visible','on')
    case 4
        % Patalla de carga
        %set(handles.Analysis,'visible','off')
        
        %show
        set(handles.TEST,'Visible','on')
        set(handles.RUN,'visible','off')
        set(handles.SaveFolder,'visible','off')
        set(handles.Mosaic,'visible','off')
        set(handles.Next,'visible','off')
        set(handles.Previous,'visible','off')
        set(handles.SingleNeuronMethods,'visible','off')
        set(handles.RasterPanel,'visible','off')
        set(handles.Home,'visible','off')
        set(handles.TEXTCalculating,'visible','on')
        set(handles.TEXTFolder,'visible','on')
        set(handles.TEXTFile,'visible','on')
        set(handles.Logo,'visible','off')
        set(get(handles.Logo,'children'),'visible','on')
        set(handles.TIMETEXT,'visible','off')
        set(handles.TimeFormat,'visible','off')
        set(handles.FrecuencyFormat,'visible','off')
  
        %set(handles.FrecuencyFormatNumber,'visible','off')
        set(handles.spikes,'visible','off')
        set(handles.Home,'visible','off')
        set(handles.BinWidthText,'Visible','off')
        set(handles.ConnectivityMethods,'Visible','off')
        set(handles.TimeFormatNumber,'Visible','off')
                set(handles.maxf,'visible','off')
        set(handles.maxfText,'visible','off')


        
end