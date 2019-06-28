



function Methods(handles,varagin)
warning off
Folder = get(handles.SaveFolder,'UserData');
%Npartes = (get(handles.Npartes,'value'));
filesdirectore = get(handles.ListBoxFiles,'UserData');
programa = get(handles.Title,'UserData');
%TimeWindow = str2num(get(handles.TIME,'string'));
%Frecuency = str2num(get(handles.FrecuencyFormatNumber,'string'));
TimeFormat = get(handles.TimeFormatNumber,'value');
%BW = str2num(get(handles.BinWidthValue,'string'));  % BinWidth


Scale = 10;
switch TimeFormat
    case 1
        TimeFormat = 'ms';
    case 2
        TimeFormat = 'sec';
    case 3
        TimeFormat = 'min';
    case 4
        TimeFormat = 'days';
end



%% Binwdith
BW_ISI = str2num(get(handles.BW_ISI,'string'));
BW_AC = str2num(get(handles.BW_AC,'string'));
BW_AS = str2num(get(handles.BW_AS,'string'));
BW_BU = str2num(get(handles.BW_BU,'string'));
BW_PO = str2num(get(handles.BW_PO,'string'));
BW_FA = str2num(get(handles.BW_FA,'string'));
BW_PA = str2num(get(handles.BW_PA,'string'));
BW_CC = str2num(get(handles.BW_CC,'string'));
BW_JISD = str2num(get(handles.BW_JISD,'string'));

%% Time Window
TW_ISI = str2num(get(handles.TW_ISI,'string'));
TW_AC = str2num(get(handles.TW_AC,'string'));
TW_AS = str2num(get(handles.TW_AS,'string'));
TW_BU = str2num(get(handles.TW_BU,'string'));
TW_PO = str2num(get(handles.TW_PO,'string'));
TW_FA = str2num(get(handles.TW_FA,'string'));
TW_PA = str2num(get(handles.TW_PA,'string'));
TW_CC = str2num(get(handles.TW_CC,'string'));
TW_JISD = str2num(get(handles.TW_JISD,'string'));

%% Segmentation number
SN_ISI = (get(handles.SN_ISI,'value'));
SN_AC = (get(handles.SN_AC,'value'));
SN_AS = (get(handles.SN_AS,'value'));
SN_BU = (get(handles.SN_BU,'value'));
SN_PO = (get(handles.SN_PO,'value'));
SN_FA = (get(handles.SN_FA,'value'));
SN_PA = (get(handles.SN_PA,'value'));
SN_CC = (get(handles.SN_CC,'value'));
SN_JISD = (get(handles.SN_JISD,'value'));

%% Raster
% SRA_ISI = str2num(get(handles.SRA_ISI,'string'));
% SRA_AC = str2num(get(handles.SRA_AC,'string'));
% SRA_AS = str2num(get(handles.SRA_AS,'string'));
% SRA_BU = str2num(get(handles.SRA_BU,'string'));
% SRA_PO = str2num(get(handles.SRA_PO,'string'));
% SRA_FA = str2num(get(handles.SRA_FA,'string'));
% SRA_PA = str2num(get(handles.SRA_PA,'string'));
% RA_CC = str2num(get(handles.RA_CC,'string'));
% RA_JISD = str2num(get(handles.RA_JISD,'string'));

%% Save Figs
FIG_ISI = (get(handles.FIG_ISI,'value'))==1;
FIG_AC = (get(handles.FIG_AC,'value'))==1;
FIG_AS = (get(handles.FIG_AS,'value'))==1;
FIG_BU = (get(handles.FIG_BU,'value'))==1;
FIG_PO = (get(handles.FIG_PO,'value'))==1;
FIG_FA = (get(handles.FIG_FA,'value'))==1;
FIG_PA = (get(handles.FIG_PA,'value'))==1;
FIG_CC = (get(handles.FIG_CC,'value'))==1;
FIG_JISD = (get(handles.FIG_JISD,'value'))==1;

%% Save pdf
PDF_ISI = (get(handles.PDF_ISI,'value'))==1;
PDF_AC = (get(handles.PDF_AC,'value'))==1;
PDF_AS = (get(handles.PDF_AS,'value'))==1;
PDF_BU = (get(handles.PDF_BU,'value'))==1;
PDF_PO = (get(handles.PDF_PO,'value'))==1;
PDF_FA = (get(handles.PDF_FA,'value'))==1;
PDF_PA = (get(handles.PDF_PA,'value'))==1;
PDF_CC = (get(handles.PDF_CC,'value'))==1;
PDF_JISD = (get(handles.PDF_JISD,'value'))==1;













a1 = get(handles.GrupoCC1,'string');
a2 = get(handles.GrupoCC2,'string');
a3 = get(handles.GrupoCC3,'string');
a4 = get(handles.GrupoCC4,'string');
a5 = get(handles.GrupoCC5,'string');
a6 = get(handles.GrupoCC6,'string');
a7 = get(handles.GrupoCC7,'string');
a8 = get(handles.GrupoCC8,'string');
a9 = get(handles.GrupoCC9,'string');
a10 = get(handles.GrupoCC10,'string');
a11 = get(handles.GrupoCC11,'string');
a12 = get(handles.GrupoCC12,'string');
a13 = get(handles.GrupoCC13,'string');
a14 = get(handles.GrupoCC14,'string');
a15 = get(handles.GrupoCC15,'string');
a16 = get(handles.GrupoCC16,'string');
a17 = get(handles.GrupoCC17,'string');
a18 = get(handles.GrupoCC18,'string');
a19 = get(handles.GrupoCC19,'string');
a20 = get(handles.GrupoCC20,'string');
a21 = get(handles.GrupoCC21,'string');
a22 = get(handles.GrupoCC22,'string');
a23 = get(handles.GrupoCC23,'string');
a24 = get(handles.GrupoCC24,'string');
a25 = get(handles.GrupoCC25,'string');
a26 = get(handles.GrupoCC26,'string');
a27 = get(handles.GrupoCC27,'string');
a28 = get(handles.GrupoCC28,'string');
a29 = get(handles.GrupoCC29,'string');
a30 = get(handles.GrupoCC30,'string');
a31 = get(handles.GrupoCC31,'string');
a32 = get(handles.GrupoCC32,'string');
a33 = get(handles.GrupoCC33,'string');
a34 = get(handles.GrupoCC34,'string');
a35 = get(handles.GrupoCC35,'string');
a36 = get(handles.GrupoCC36,'string');
a37 = get(handles.GrupoCC37,'string');
a38 = get(handles.GrupoCC38,'string');
a39 = get(handles.GrupoCC39,'string');
a40 = get(handles.GrupoCC40,'string');
a41 = get(handles.GrupoCC41,'string');
a42 = get(handles.GrupoCC42,'string');
a43 = get(handles.GrupoCC43,'string');
a44 = get(handles.GrupoCC44,'string');
a45 = get(handles.GrupoCC45,'string');
a46 = get(handles.GrupoCC46,'string');
a47 = get(handles.GrupoCC47,'string');
a48 = get(handles.GrupoCC48,'string');
a49 = get(handles.GrupoCC49,'string');
a50 = get(handles.GrupoCC50,'string');
a51 = get(handles.GrupoCC51,'string');
a52 = get(handles.GrupoCC52,'string');
a53 = get(handles.GrupoCC53,'string');
a54 = get(handles.GrupoCC54,'string');
a55 = get(handles.GrupoCC55,'string');
a56 = get(handles.GrupoCC56,'string');
a57 = get(handles.GrupoCC57,'string');
a58 = get(handles.GrupoCC58,'string');
a59 = get(handles.GrupoCC59,'string');
a60 = get(handles.GrupoCC60,'string');
a61 = get(handles.GrupoCC61,'string');
a62 = get(handles.GrupoCC62,'string');
a63 = get(handles.GrupoCC63,'string');
a64 = get(handles.GrupoCC64,'string');
a65 = get(handles.GrupoCC65,'string');
a66 = get(handles.GrupoCC66,'string');
a67 = get(handles.GrupoCC67,'string');
a68 = get(handles.GrupoCC68,'string');
a69 = get(handles.GrupoCC69,'string');
a70 = get(handles.GrupoCC70,'string');
a71 = get(handles.GrupoCC71,'string');
a72 = get(handles.GrupoCC72,'string');
a73 = get(handles.GrupoCC73,'string');
a74 = get(handles.GrupoCC74,'string');
a75 = get(handles.GrupoCC75,'string');
a76 = get(handles.GrupoCC76,'string');
a77 = get(handles.GrupoCC77,'string');
a78 = get(handles.GrupoCC78,'string');
a79 = get(handles.GrupoCC79,'string');
a80 = get(handles.GrupoCC80,'string');
a81 = get(handles.GrupoCC81,'string');
a82 = get(handles.GrupoCC82,'string');
a83 = get(handles.GrupoCC83,'string');
a84 = get(handles.GrupoCC84,'string');
a85 = get(handles.GrupoCC85,'string');
a86 = get(handles.GrupoCC86,'string');
a87 = get(handles.GrupoCC87,'string');
a88 = get(handles.GrupoCC88,'string');
a89 = get(handles.GrupoCC89,'string');
a90 = get(handles.GrupoCC90,'string');
a91 = get(handles.GrupoCC91,'string');
a92 = get(handles.GrupoCC92,'string');
a93 = get(handles.GrupoCC93,'string');
a94 = get(handles.GrupoCC94,'string');
a95 = get(handles.GrupoCC95,'string');
a96 = get(handles.GrupoCC96,'string');
a97 = get(handles.GrupoCC97,'string');
a98 = get(handles.GrupoCC98,'string');
a99 = get(handles.GrupoCC99,'string');
a100 = get(handles.GrupoCC100,'string');
a101 = get(handles.GrupoCC101,'string');
a102 = get(handles.GrupoCC102,'string');
a103 = get(handles.GrupoCC103,'string');
a104 = get(handles.GrupoCC104,'string');
a105 = get(handles.GrupoCC105,'string');
a106 = get(handles.GrupoCC106,'string');
a107 = get(handles.GrupoCC107,'string');
a108 = get(handles.GrupoCC108,'string');
a109 = get(handles.GrupoCC109,'string');
a110 = get(handles.GrupoCC110,'string');
a111 = get(handles.GrupoCC11,'string');
a112 = get(handles.GrupoCC112,'string');




name1 = (get(handles.textGroupCC1,'string'));
name2 = (get(handles.textGroupCC2,'string'));
name3 = (get(handles.textGroupCC3,'string'));
name4 = (get(handles.textGroupCC4,'string'));
name5 = (get(handles.textGroupCC5,'string'));
name6 = (get(handles.textGroupCC6,'string'));
name7 = (get(handles.textGroupCC7,'string'));
name8 = (get(handles.textGroupCC8,'string'));
name9 = (get(handles.textGroupCC9,'string'));
name10 = (get(handles.textGroupCC10,'string'));
name11 = (get(handles.textGroupCC11,'string'));
name12 = (get(handles.textGroupCC12,'string'));
name13 = (get(handles.textGroupCC13,'string'));
name14 = (get(handles.textGroupCC14,'string'));
name15 = (get(handles.textGroupCC15,'string'));
name16 = (get(handles.textGroupCC16,'string'));
name17 = (get(handles.textGroupCC17,'string'));
name18 = (get(handles.textGroupCC18,'string'));
name19 = (get(handles.textGroupCC19,'string'));
name20 = (get(handles.textGroupCC20,'string'));
name21 = (get(handles.textGroupCC21,'string'));
name22 = (get(handles.textGroupCC22,'string'));
name23 = (get(handles.textGroupCC23,'string'));
name24 = (get(handles.textGroupCC24,'string'));
name25 = (get(handles.textGroupCC25,'string'));
name26 = (get(handles.textGroupCC26,'string'));
name27 = (get(handles.textGroupCC27,'string'));
name28 = (get(handles.textGroupCC28,'string'));
name29 = (get(handles.textGroupCC29,'string'));
name30 = (get(handles.textGroupCC30,'string'));
name31 = (get(handles.textGroupCC31,'string'));
name32 = (get(handles.textGroupCC32,'string'));
name33 = (get(handles.textGroupCC33,'string'));
name34 = (get(handles.textGroupCC34,'string'));
name35 = (get(handles.textGroupCC35,'string'));
name36 = (get(handles.textGroupCC36,'string'));
name37 = (get(handles.textGroupCC37,'string'));
name38 = (get(handles.textGroupCC38,'string'));
name39 = (get(handles.textGroupCC39,'string'));
name40 = (get(handles.textGroupCC40,'string'));
name41 = (get(handles.textGroupCC41,'string'));
name42 = (get(handles.textGroupCC42,'string'));
name43 = (get(handles.textGroupCC43,'string'));
name44 = (get(handles.textGroupCC44,'string'));
name45 = (get(handles.textGroupCC45,'string'));
name46 = (get(handles.textGroupCC46,'string'));
name47 = (get(handles.textGroupCC47,'string'));
name48 = (get(handles.textGroupCC48,'string'));
name49 = (get(handles.textGroupCC49,'string'));
name50 = (get(handles.textGroupCC50,'string'));
name51 = (get(handles.textGroupCC51,'string'));
name52 = (get(handles.textGroupCC52,'string'));
name53 = (get(handles.textGroupCC53,'string'));
name54 = (get(handles.textGroupCC54,'string'));
name55 = (get(handles.textGroupCC55,'string'));
name56 = (get(handles.textGroupCC56,'string'));
name57 = (get(handles.textGroupCC57,'string'));
name58 = (get(handles.textGroupCC58,'string'));
name59 = (get(handles.textGroupCC59,'string'));
name60 = (get(handles.textGroupCC60,'string'));
name61 = (get(handles.textGroupCC61,'string'));
name62 = (get(handles.textGroupCC62,'string'));
name63 = (get(handles.textGroupCC63,'string'));
name64 = (get(handles.textGroupCC64,'string'));
name65 = (get(handles.textGroupCC65,'string'));
name66 = (get(handles.textGroupCC65,'string'));
name67 = (get(handles.textGroupCC67,'string'));
name68 = (get(handles.textGroupCC68,'string'));
name69 = (get(handles.textGroupCC69,'string'));
name70 = (get(handles.textGroupCC70,'string'));
name71 = (get(handles.textGroupCC71,'string'));
name72 = (get(handles.textGroupCC72,'string'));
name73 = (get(handles.textGroupCC73,'string'));
name74 = (get(handles.textGroupCC74,'string'));
name75 = (get(handles.textGroupCC75,'string'));
name76 = (get(handles.textGroupCC76,'string'));
name77 = (get(handles.textGroupCC77,'string'));
name78 = (get(handles.textGroupCC78,'string'));
name79 = (get(handles.textGroupCC79,'string'));
name80 = (get(handles.textGroupCC80,'string'));
name81 = (get(handles.textGroupCC81,'string'));
name82 = (get(handles.textGroupCC82,'string'));
name83 = (get(handles.textGroupCC83,'string'));
name84 = (get(handles.textGroupCC84,'string'));
name85 = (get(handles.textGroupCC85,'string'));
name86 = (get(handles.textGroupCC86,'string'));
name87 = (get(handles.textGroupCC87,'string'));
name88 = (get(handles.textGroupCC88,'string'));
name89 = (get(handles.textGroupCC89,'string'));
name90 = (get(handles.textGroupCC90,'string'));
name91 = (get(handles.textGroupCC91,'string'));
name92 = (get(handles.textGroupCC92,'string'));
name93 = (get(handles.textGroupCC93,'string'));
name94 = (get(handles.textGroupCC94,'string'));
name95 = (get(handles.textGroupCC95,'string'));
name96 = (get(handles.textGroupCC96,'string'));
name97 = (get(handles.textGroupCC97,'string'));
name98 = (get(handles.textGroupCC98,'string'));
name99 = (get(handles.textGroupCC99,'string'));
name100 = (get(handles.textGroupCC100,'string'));
name101 = (get(handles.textGroupCC101,'string'));
name102 = (get(handles.textGroupCC102,'string'));
name103 = (get(handles.textGroupCC103,'string'));
name104 = (get(handles.textGroupCC104,'string'));
name105 = (get(handles.textGroupCC105,'string'));
name106 = (get(handles.textGroupCC106,'string'));
name107 = (get(handles.textGroupCC107,'string'));
name108 = (get(handles.textGroupCC108,'string'));
name109 = (get(handles.textGroupCC109,'string'));
name110 = (get(handles.textGroupCC110,'string'));
name111 = (get(handles.textGroupCC111,'string'));
name112 = (get(handles.textGroupCC112,'string'));




foldername = {name1 name2 name3 name4...
    name5 name6 name7 name8...
    name9 name10 name11 name12...
    name13 name14 name15 name16...
    name17 name18 name19 name20 ...
    name21 name22 name23 name24...
    name25 name26 name27 name28...
    name29 name30 name31 name32...
    name33 name34 name35 name36...
    name37 name38 name39 name40...
    name41 name42 name43 name44...
    name45 name46 name47 name48...
    name49 name50 name51 name52...
    name53 name54 name55 name56...
    name57 name58 name59 name60...
    name61 name62 name63 name64...
    name65 name66 name67 name68...
    name69 name70 name71 name72...
    name73 name74 name75 name76...
    name77 name78 name79 name80...
    name81 name82 name83 name84...
    name85 name86 name87 name88...
    name89 name90 name91 name92...
    name93 name94 name95 name96...
    name97 name98 name99 name100...
    name101 name102 name103 name104...
    name105 name106 name107 name108...
    name109 name110 name111 name112...
    };
names ={a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 ...
    a17 a18 a19 a20 a21 a22 a23 a24 a25 a26 a27 a28 a29 a30 a31 a32...
    a33 a34 a35 a36 a37 a38 a39 a40 a41 a42 a43 a44 a45 a46 a47 a48...
    a49 a50 a51 a52 a53 a54 a55 a56 a57 a58 a59 a60 a61 a62 a63 a64...
    a65 a66 a67 a68 a69 a70 a71 a72 a73 a74 a75 a76 a77 a78 a79 a80...
    a81 a82 a83 a84 a85 a86 a87 a88 a89 a90 a91 a92 a93 a94 a95 a96...
    a97 a98 a99 a100 a101 a102 a103 a104 a105 a106 a107 a108 a109 a110 a111 a112...
    };


% save names names

cd(Folder) % change to the selected folder
%Report(names,foldername,0);

set(handles.RUN,'string','Processing')
%%% Single Neuron Analysis
FolderCount = 0;
for i = 1:112
    if ~isempty(names{i})
        FolderCount = FolderCount +1;
    end
end
FolderCount;



SingleNeuron = get(handles.BoxMethods,'Value');
CrosssCorrelation = get(handles.BoxCC,'Value');
JPSD = get(handles.BoxSnow,'value');
Raster = get(handles.Raster,'value');
Single = get(handles.Single,'value');
Double = get(handles.Double,'value');
Triple = get(handles.Triple,'value');






PartesRaster = (get(handles.SegRaster,'value'));
Times = {};

set(handles.TEST,'String','Method: Single Neuron Analysis')

if SingleNeuron==1 & (get(handles.ISIH,'value')==1 | get(handles.AC,'value')==1 ...
        | get(handles.AS,'value')==1 | get(handles.BU,'value')==1 | get(handles.PO,'value')==1 | ...
        get(handles.FA,'value')==1 | get(handles.PHA,'value')==1)
    Nfolder = 0;
    for i =1:112
        
        N = length(names{i});
        if isempty(names{i})
            continue
        end
        Nfolder = Nfolder+1;
        if isempty(foldername{i})
            mkdir(Folder,'No name')
            groupname = strcat(Folder,'No name');
            cd('No name')
            
        else
            if exist(foldername{i},'dir')
            else
                mkdir(Folder,foldername{i})
                groupname = strcat(Folder,foldername{i});
                
                
            end
        end
        cd(foldername{i})
        
        set(handles.TEXTFolder,'string','Folder: '+string(foldername{i})+'  ('+string(Nfolder)+' of '+string(FolderCount)+ ')')
        
        
        %% For testing
%         pdefes = dir('*.pdf');
%         largo = length(pdefes);
%         if largo>0
%             for xx = 1:largo
%                 namepdfs{xx} = pdefes(xx).name;
%             end
%             delete(namepdfs{:})
%         end

        %%
        
        
        
        if license('test', 'Distrib_Computing_Toolbox')==1;
            
            set(handles.TEXTFile,'string','File viewer is disable using Parallel Computing')
            pause(1)
            
            parfor j = 1:N
               
                file = names{i};
                namedata = strcat(filesdirectore,char(file(j)));
                data = importdata(namedata)*Scale;
                nombre = char(file(j));
                
                
                
                
                %set(handles.TEXTFile,'string','File: '+string(nombre)+'  ('+string(j)+' of '+string(N)+')')
                
                
                
                %tic
                if Raster ==1 & Single ==1
                    try
                        SingleRaster(TimeFormat,data,Hz,char(nombre),PartesRaster);
                    end
                end
                %times{1,j} = [toc length(data)];
                
                %tic
                if get(handles.ISIH,'value')==1
                    try
                        ISIHF(PDF_ISI,FIG_ISI,TimeFormat,BW_ISI,TW_ISI,data,char(file(j)),0,SN_ISI);
                        %saveas(gcf,strcat(nombre(1:end-4),'_IS'),'pdf')
                        close figure 1
                        if SN_ISI > 1
                            ISIHF(PDF_ISI,FIG_ISI,TimeFormat,BW_ISI,TW_ISI,data,char(file(j)),1,SN_ISI);
                            %saveas(gcf,strcat(nombre(1:end-4),'_IS','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{2,j} = [toc length(data)];
                
                %tic
                if get(handles.AC,'value')==1
                    try
                        AutoCorrelacionF(PDF_AC,FIG_AC,TimeFormat,BW_AC,TW_AC,data*0.1,char(file(j)),0,SN_AC);
                        %saveas(gcf,strcat(nombre(1:end-4),'_AC'),'pdf')
                        close figure 1
                        if SN_AC >1
                            AutoCorrelacionF(PDF_AC,FIG_AC,TimeFormat,BW_AC,TW_AC,data*0.1,char(file(j)),1,SN_AC);
                            %saveas(gcf,strcat(nombre(1:end-4),'_AC','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{3,j} = [toc length(data)];
                
                %tic
                if get(handles.AS,'value')==1
                    try
                        AutoEspectroF(PDF_AS,FIG_AS,data,char(file(j)),0,SN_AS);
                        %saveas(gcf,strcat(nombre(1:end-4),'_AS'),'pdf')
                        close figure 1
                        
                        if SN_AS>1
                            AutoEspectroF(PDF_AS,FIG_AS,data,char(file(j)),1,SN_AS);
                            %saveas(gcf,strcat(nombre(1:end-4),'_AS','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{4,j} = [toc length(data)];
                
                
                
                
                %tic
                if get(handles.BU,'value')==1
                    try
                        BurstF(PDF_BU,FIG_BU,TimeFormat,BW_BU,data,char(file(j)),0,SN_BU);
                        if SN_BU >1
                            BurstF(PDF_BU,FIG_BU,TimeFormat,BW_BU,data,char(file(j)),1,SN_BU);
                        end
                    end
                end
                %times{5,j} = [toc length(data)];
                
                %tic
                if get(handles.PO,'value')==1
                    try
                        PoinCareF(PDF_PO,FIG_PO,TimeFormat,data,char(file(j)),0,SN_PO);
                        %saveas(gcf,strcat(nombre(1:end-4),'_PO'),'pdf')
                        close figure 1
                        if SN_PO >1
                            PoinCareF(PDF_PO,FIG_PO,TimeFormat,data,char(file(j)),1,SN_PO);
                            %saveas(gcf,strcat(nombre(1:end-4),'_PO','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                % times{6,j} = [toc length(data)];
                
                
                % tic
                if get(handles.PHA,'value')==1
                    try
                        Phase(PDF_PA,FIG_PA,TimeFormat,data,char(file(j)),0,SN_PA);
                        %saveas(gcf,strcat(nombre(1:end-4),'_PHA'),'pdf')
                        close figure 1
                        if SN_PA >1
                            Phase(PDF_PA,FIG_PA,TimeFormat,data,char(file(j)),1,SN_PA);
                            %saveas(gcf,strcat(nombre(1:end-4),'_PHA','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{7,j} = [toc length(data)];
                
                
                
                
                % tic
                if get(handles.FA,'value')==1
                    try
                        FractalF(PDF_FA,FIG_FA,TimeFormat,TW_FA,data,char(file(j)),0,SN_FA);
                        %saveas(gcf,strcat(nombre(1:end-4),'_FA'),'pdf')
                        close figure 1
                    end
                end
                %  times{8,j} = [toc length(data)];
                
                
                
                
                
            end
            
            
        else
            
            for j = 1:N
                clc
                file = names{i};
                namedata = strcat(filesdirectore,char(file(j)));
                data = importdata(namedata)*Scale;
                nombre = char(file(j));
                
                
                
                
                set(handles.TEXTFile,'string','File: '+string(nombre)+'  ('+string(j)+' of '+string(N)+')')
                
                
                
                %tic
                if Raster ==1 & Single ==1
                    try
                        SingleRaster(TimeFormat,data,Hz,char(nombre),PartesRaster);
                    end
                end
                %times{1,j} = [toc length(data)];
                
                %tic
                if get(handles.ISIH,'value')==1
                    try
                        ISIHF(PDF_ISI,FIG_ISI,TimeFormat,BW_ISI,TW_ISI,data,char(file(j)),0,SN_ISI);
                        %saveas(gcf,strcat(nombre(1:end-4),'_IS'),'pdf')
                        close figure 1
                        if SN_ISI > 1
                            ISIHF(PDF_ISI,FIG_ISI,TimeFormat,BW_ISI,TW_ISI,data,char(file(j)),1,SN_ISI);
                            %saveas(gcf,strcat(nombre(1:end-4),'_IS','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{2,j} = [toc length(data)];
                
                %tic
                if get(handles.AC,'value')==1
                    try
                        AutoCorrelacionF(PDF_AC,FIG_AC,TimeFormat,BW_AC,TW_AC,data*0.1,char(file(j)),0,SN_AC);
                        %saveas(gcf,strcat(nombre(1:end-4),'_AC'),'pdf')
                        close figure 1
                        if SN_AC >1
                            AutoCorrelacionF(PDF_AC,FIG_AC,TimeFormat,BW_AC,TW_AC,data*0.1,char(file(j)),1,SN_AC);
                            %saveas(gcf,strcat(nombre(1:end-4),'_AC','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{3,j} = [toc length(data)];
                
                %tic
                if get(handles.AS,'value')==1
                    try
                        AutoEspectroF(PDF_AS,FIG_AS,data,char(file(j)),0,SN_AS);
                        %saveas(gcf,strcat(nombre(1:end-4),'_AS'),'pdf')
                        close figure 1
                        
                        if SN_AS>1
                            AutoEspectroF(PDF_AS,FIG_AS,data,char(file(j)),1,SN_AS);
                            %saveas(gcf,strcat(nombre(1:end-4),'_AS','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{4,j} = [toc length(data)];
                
                
                
                
                %tic
                if get(handles.BU,'value')==1
                    try
                        BurstF(PDF_BU,FIG_BU,TimeFormat,BW_BU,data,char(file(j)),0,SN_BU);
                        if SN_BU >1
                            BurstF(PDF_BU,FIG_BU,TimeFormat,BW_BU,data,char(file(j)),1,SN_BU);
                        end
                    end
                end
                %times{5,j} = [toc length(data)];
                
                %tic
                if get(handles.PO,'value')==1
                    try
                        PoinCareF(PDF_PO,FIG_PO,TimeFormat,data,char(file(j)),0,SN_PO);
                        %saveas(gcf,strcat(nombre(1:end-4),'_PO'),'pdf')
                        close figure 1
                        if SN_PO >1
                            PoinCareF(PDF_PO,FIG_PO,TimeFormat,data,char(file(j)),1,SN_PO);
                            %saveas(gcf,strcat(nombre(1:end-4),'_PO','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                % times{6,j} = [toc length(data)];
                
                
                % tic
                if get(handles.PHA,'value')==1
                    try
                        Phase(PDF_PA,FIG_PA,TimeFormat,data,char(file(j)),0,SN_PA);
                        %saveas(gcf,strcat(nombre(1:end-4),'_PHA'),'pdf')
                        close figure 1
                        if SN_PA >1
                            Phase(PDF_PA,FIG_PA,TimeFormat,data,char(file(j)),1,SN_PA);
                            %saveas(gcf,strcat(nombre(1:end-4),'_PHA','time'),'pdf')
                            close figure 1
                        end
                    end
                end
                %times{7,j} = [toc length(data)];
                
                
                
                
                % tic
                if get(handles.FA,'value')==1
                    try
                        FractalF(PDF_FA,FIG_FA,TimeFormat,TW_FA,data,char(file(j)),0,SN_FA);
                        %saveas(gcf,strcat(nombre(1:end-4),'_FA'),'pdf')
                        close figure 1
                    end
                end
                %  times{8,j} = [toc length(data)];
                
            end
            
            

            
        end
        pdefes = dir('*.pdf');
        largo = length(pdefes);
        if largo>0
            for xx = 1:largo
                namepdfs{xx} = pdefes(xx).name;
            end
            
            n=find(strcmp(namepdfs,strcat('Result Files single_',' ',char(string(foldername{i})),'.pdf')));
            
            if isempty(n)
            else
                namepdfs{n}='';
            end
            
            
            
            set(handles.TEXTFile,'string','Creating pdf file')
            append_pdfs(strcat('Result Files single_',' ',char(string(foldername{i})),'.pdf'),namepdfs{:})
            delete(namepdfs{:})
        end
        reportpartes(names{:,i},1,foldername{i})
        
        % times{9,j} = [toc j];
        
        cd(Folder)
    end
    
    %save('Tiempo.mat','times')
    cd(Folder)
    clc
end
    % CrossCorrelation
    set(handles.TEST,'String','Method: Cross-Correlation')
    
    if CrosssCorrelation==1
        Nfolder= 0;
        nombresreport = cellstr({});
        %contadooor = 1;
        for i =1:112
            
            N = length(names{i});
            if isempty(names{i})
                continue
            end
            Nfolder = Nfolder +1 ;
            if isempty(foldername{i})
                mkdir(Folder,'CC No name')
                groupname = strcat(Folder,'CC No name');
                cd('CC No name')
                
            else
                if exist(strcat('CC',foldername{i}),'dir')
                else
                    mkdir(Folder,strcat('CC',foldername{i}))
                    
                    groupname = strcat(Folder,foldername{i});
                    
                    
                end
            end
            
            cd(strcat('CC',foldername{i}))
            [col1, col2] = combi2Total(names{i});
            %
            %         for i = 1:length(col1);
            %              b = col1{i,1};
            %              col11{i,1} = b(1:end-4);
            %              b = col2{i,1};
            %              col22{i,1} = b(1:end-4);
            %
            %         end
            %
            
            
            
            
            
            nombresCC= strcat(col1,'-',col2);
            
            
            set(handles.TEXTFolder,'string','Folder: '+string(foldername{i})+'  ('+string(Nfolder)+' of '+string(FolderCount)+ ')')
            largor = length(col1);
            if isempty(col1{1})
            else
                if license('test', 'Distrib_Computing_Toolbox') == 1;
                    set(handles.TEXTFile,'string','File viewer is disable using Parallel Computing')
                    pause(1)
                   
             
                    parfor j = 1:largor
                        
                        
                        
                        namedata1 = strcat(filesdirectore,col1{j});
                        namedata2 = strcat(filesdirectore,col2{j});
                        data1 = importdata(namedata1)*Scale;
                        data2 = importdata(namedata2)*Scale;
                        nombre1 = col1{j};
                        nombre2 = col2{j};
                        
                        %set(handles.TEXTFile,'string','File: '+string(strcat(col1{j},'-',col2{j}))+'  ('+string(largor-j+1)+' of '+string(largor)+')')
                        
                        if SN_CC ==1
                            
                            if Raster==1 &Double==1
                                
                                DoubleRaster(TimeFormat,data1,data2,Hz,char(nombre1),char(nombre2),PartesRaster)
                                
                                
                            end
                            
                            try
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,0,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC'),'pdf')
                                close figure 1
                            end
                        else
                            if Raster==1 &Double==1
                                try
                                    DoubleRaster(TimeFormat,data1,data2,Hz,char(nombre1),char(nombre2),PartesRaster)
                                    
                                end
                            end
                            try
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,0,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC'),'pdf')
                                close figure 1
                                
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,1,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC_','time'),'pdf')
                                close figure 1
                            end
                        end
                        
                        
                        
                    end
                else
                    
                    for j = 1:largor
                        
                        
                        
                        namedata1 = strcat(filesdirectore,col1{j});
                        namedata2 = strcat(filesdirectore,col2{j});
                        data1 = importdata(namedata1)*Scale;
                        data2 = importdata(namedata2)*Scale;
                        nombre1 = col1{j};
                        nombre2 = col2{j};
                        
                        %set(handles.TEXTFile,'string','File: '+string(strcat(col1{j},'-',col2{j}))+'  ('+string(j)+' of '+string(largor)+')')
                        set(handles.TEXTFile,'string',{'Files:         '+string(col1{j})+'      ('+string(j)+' of '+string(largor)+')' ,''+string(col2{j})})
                        
                        if SN_CC ==1
                            
                            
                            if Raster==1 &Double==1
                                try
                                    DoubleRaster(TimeFormat,data1,data2,Hz,char(nombre1),char(nombre2),PartesRaster)
                                    
                                end
                            end
                            
                            try
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,0,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC'),'pdf')
                                close figure 1
                            end
                        else
                            
                            if Raster==1 & Double==1
                                try
                                    DoubleRaster(TimeWindow,data1,data2,Hz,char(nombre1),char(nombre2),PartesRaster)
                                    
                                end
                            end
                            
                            
                            
                            
                            try
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,0,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC'),'pdf')
                                close figure 1
                                
                                CrossCorrelationF(PDF_CC,FIG_CC,TimeFormat,BW_CC,TW_CC,data1,data2,nombre1,nombre2,1,SN_CC);
                                %saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'_CC_','time'),'pdf')
                                close figure 1
                            end
                        end
                        
                        
                        
                    end
                    
                    
                    
                    
                    
                end
                pdefes = dir('*.pdf');
                largo = length(pdefes);
                
                
                if largo ~=0
                    for xx = 1:largo
                        namepdfs{xx} = pdefes(xx).name;
                    end
                    n=find(strcmp(namepdfs,strcat('Result Files CC_',' ',char(string(foldername{i})),'.pdf')));
                    
                    
                    
                    if isempty(n)
                    else
                        namepdfs{n}='';
                    end
                    
                    set(handles.TEXTFile,'string','Creating pdf file')
                    append_pdfs(strcat('Result Files CC_',' ',char(string(foldername{i})),'.pdf'),namepdfs{:})
                end
                
                
            end
            try
                delete(namepdfs{:})
            end
            reportpartes(nombresCC,2,foldername{i})
            cd(Folder)
            
            
            
        end
        cd(Folder)
        %Report(nombresCC,foldername,1)
    end
    
    clc
    %%%JTDP
    
    set(handles.TEST,'String','Method: JISD')
    if JPSD==1
        Nfolder = 0;
        for i =1:112
            
            N = length(names{i});
            if isempty(names{i})
                continue
            end
            Nfolder = Nfolder +1 ;
            if isempty(foldername{i})
                mkdir(Folder,'No name')
                groupname = strcat(Folder,'JISD No name');
                cd('JISD No name')
                
            else
                if exist(strcat('JISD',foldername{i}),'dir')
                    
                else
                    mkdir(Folder,strcat('JISD',foldername{i}))
                    
                    groupname = strcat(Folder,foldername{i});
                    
                    
                end
            end
            
            cd(strcat('JISD',foldername{i}))
            [col1, col2 , col3] = combi3Total(names{i});
            largor = length(col1);
            
            nombresSNOW{1,i}= strcat(col1,'-',col2,'-',col3);
            set(handles.TEXTFolder,'string','Folder: '+string(foldername{i})+'  ('+string(Nfolder)+' of '+string(FolderCount)+ ')')
            if isempty(col1)
            else
                
                        %% For testing
        pdefes = dir('*.pdf');
        largo = length(pdefes);
        if largo>0
            for xx = 1:largo
                namepdfs{xx} = pdefes(xx).name;
            end
            delete(namepdfs{:})
        end
                
                
                
                if license('test', 'Distrib_Computing_Toolbox')==1
                    set(handles.TEXTFile,'string','File viewer is disable using Parallel Computing')
                    pause(1)
                    
                    
                    parfor j = 1:largor
                        
                        
                        namedata1 = strcat(filesdirectore,col1{j});
                        namedata2 = strcat(filesdirectore,col2{j});
                        namedata3 = strcat(filesdirectore,col3{j});
                        data1 = importdata(namedata1)*Scale;
                        data2 = importdata(namedata2)*Scale;
                        data3 = importdata(namedata3)*Scale;
                        nombre1 = col1{j};
                        nombre2 = col2{j};
                        nombre3 = col3{j};
                        
                        %set(handles.TEXTFile,'string','File: '+string(strcat(col1{j},'-',col2{j},'-',col3{j}))+'  ('+string(largor-j+1)+' of '+string(largor)+')')
                        
                        if SN_JISD ==1
                            
                            if Raster==1 & Triple ==1
                                try
                                    TripleRaster(TimeFormat,data1,data2,data3,Hz,char(nombre1),char(nombre2),char(nombre3),PartesRaster)
                                    
                                end
                            end
                            
                            
                            
                            try
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,0,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD'),'pdf')
                                end
                                close figure 1
                            end
                        else
                            
                            
                            if Raster==1 & Triple ==1
                                try
                                    TripleRaster(TimeFormat,data1,data2,data3,Hz,char(nombre1),char(nombre2),char(nombre3),PartesRaster)
                                    
                                end
                            end
                            
                            
                            
                            
                            try
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,0,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD'),'pdf')
                                end
                                close figure 1
                                
                                
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,1,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD_','time'),'pdf')
                                end
                                close figure 1
                            end
                        end
                    end
   
                    
                else
                    
                    for j = 1:largor
                        
                        
                        namedata1 = strcat(filesdirectore,col1{j});
                        namedata2 = strcat(filesdirectore,col2{j});
                        namedata3 = strcat(filesdirectore,col3{j});
                        data1 = importdata(namedata1)*Scale;
                        data2 = importdata(namedata2)*Scale;
                        data3 = importdata(namedata3)*Scale;
                        nombre1 = col1{j};
                        nombre2 = col2{j};
                        nombre3 = col3{j};
                        
                        %set(handles.TEXTFile,'string','File: '+string(strcat(col1{j},'-',col2{j},'-',col3{j}))+'  ('+string(j)+' of '+string(largor)+')')
                        set(handles.TEXTFile,'string',{'Files:         '+string(col1{j})+'      ('+string(j)+' of '+string(largor)+')' ,''+string(col2{j}),''+string(col3{j})})
                        
                        if SN_JISD ==1
                            
                            if Raster==1 & Triple ==1
                                try
                                    TripleRaster(TimeFormat,data1,data2,data3,Hz,char(nombre1),char(nombre2),char(nombre3),PartesRaster)
                                    
                                end
                            end
                            
                            
                            
                            
                            
                            try
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,0,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD'),'pdf')
                                end
                                close figure 1
                            end
                        else
                            
                            if Raster==1 & Triple ==1
                                try
                                    TripleRaster(TimeFormat,data1,data2,data3,Hz,char(nombre1),char(nombre2),char(nombre3),PartesRaster)
                                    
                                end
                            end
                            
                            
                            
                            try
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,0,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD'),'pdf')
                                end
                                close figure 1
                                
                                snow(FIG_JISD,TimeFormat,BW_JISD,TW_JISD,data1,data2,data3,nombre1,nombre2,nombre3,1,SN_JISD);
                                if PDF_JISD
                                    saveas(gcf,strcat(nombre1(1:end-4),'-',nombre2(1:end-4),'-', nombre3(1:end-4),'_JISD_','time'),'pdf')
                                end
                                close figure 1
                            end
                        end
                    end
       
                    
                end
                pdefes = dir('*.pdf');
                largo = length(pdefes);
                if largo ~=0
                    for xx = 1:largo
                        namepdfs{xx} = pdefes(xx).name;
                    end
                    
                    n=find(strcmp(namepdfs,strcat('Result Files_JISD_',' ',char(string(foldername{i})),'.pdf')));
                    
                    if isempty(n)
                    else
                        namepdfs{n}='';
                    end
                    set(handles.TEXTFile,'string','Creating pdf file')
                    append_pdfs(strcat('Result Files_JISD_',' ',char(string(foldername{i})),'.pdf'),namepdfs{:})
                    
                end
                
            end
            try
                delete(namepdfs{:})
            end
            reportpartes(nombresSNOW{:,i},3,foldername{i})
            cd(Folder)
            
        end
    end
    
    
    clc
    
    
    
    
    
    set(handles.TEXTCalculating,'visible','off')
    
    set(handles.TEXTFolder,'visible','off')
    set(handles.TEXTFile,'visible','off')
    
    
    
    
    
    
    set(handles.TEST,'String','Finished')
    %pause(6)
    tab(1,handles)
    set(handles.TEST,'visible','off')
    
    
    
    set(handles.Next,'UserData',1)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    cd(programa)
    
    
    
    
    
    
    






