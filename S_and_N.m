function varargout = S_and_N(varargin)
% S_AND_N MATLAB code for S_and_N.fig
%      S_AND_N, by itself, creates a new S_AND_N or raises the existing
%      singleton*.
%
%      H = S_AND_N returns the handle to a new S_AND_N or the handle to
%      the existing singleton*.
%
%      S_AND_N('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in S_AND_N.M with the given input arguments.
%
%      S_AND_N('Property','Value',...) creates a new S_AND_N or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before S_and_N_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to S_and_N_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help S_and_N

% Last Modified by GUIDE v2.5 03-Jul-2019 19:30:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @S_and_N_OpeningFcn, ...
                   'gui_OutputFcn',  @S_and_N_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before S_and_N is made visible.
function S_and_N_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to S_and_N (see VARARGIN)

% Choose default command line output for S_and_N
valor = get(handles.Title,'value');
oldpath = path;
N =  length(mfilename('path'));



direction = mfilename('fullpath');
direction(1:end-8)
cd(direction(1:end-8))



p =mfilename('fullpath');
p = p(1:end-N);
set(handles.Title,'UserData',p)
if (ismac |isunix) & valor==0
    newpath = strcat(p,'Functions');
    path(newpath,oldpath);
    set(handles.Title,'value',1)
end
if ispc & valor==0
    newpath = strcat(p,'Functions');
    path(newpath,oldpath);
    set(handles.Title,'value',1)
    FontSizeGroups(handles)
end
axes(handles.Logo);
imshow('ribete.png')




%Positions
%set(handles.BoxMethods,'OuterPosition',[0.042 0.554 0.352 0.059])
%set(handles.BoxCC,'OuterPosition',[0.042 0.5 0.473 0.059])
%set(handles.BoxSnow,'OuterPosition',[0.043 0.447 0.652 0.056])
set(handles.ListBoxFiles,'OuterPosition',[0.6 0.11 0.329 0.612])
%set(handles.Title,'OuterPosition',[0.123 0.800 0.775 0.167])
set(handles.SelectFiles,'OuterPosition',[0.6 0.72 0.176 0.059])
set(handles.ClearFiles,'OuterPosition',[0.6 0.052 0.187 0.059])
set(handles.PanelCC,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC2,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC3,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC4,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC5,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC6,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.PanelCC7,'OuterPosition',[0.38 0.2 0.602 0.691])
set(handles.uitableCC,'OuterPosition',[0.052 0.17 0.274 0.692])


pause(1)
addpath(genpath(direction(1:end-8)))
pause(1)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes S_and_N wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = S_and_N_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in BoxSnow.
function BoxSnow_Callback(hObject, eventdata, handles)
% hObject    handle to BoxSnow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BoxSnow


% --- Executes on button press in BoxCC.
function BoxCC_Callback(hObject, eventdata, handles)
% hObject    handle to BoxCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BoxCC


% --- Executes on button press in BoxMethods.
function BoxMethods_Callback(hObject, eventdata, handles)
% hObject    handle to BoxMethods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BoxMethods


% --- Executes on button press in Home.
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tab(1,handles)
set(handles.Next,'UserData',1)



% --- Executes on button press in Next.
function Next_Callback(hObject, eventdata, handles)
% hObject    handle to Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = get(handles.Next,'UserData');
tab(n+1,handles)


% --- Executes on button press in FigureButton.
function FigureButton_Callback(hObject, eventdata, handles)
% hObject    handle to FigureButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname, filterindex] = uigetfile( ...
{  '*.fig','MAT-files (*.m)'; ...
   '*.slx;*.mdl','Models (*.slx, *.mdl)'; ...
   '*.*',  'All Files (*.*)'}, ...
   'Pick a file');
name = strcat(pathname,filename);
if isempty(name)
    msgbox('No File Selected')
    return
end

openfig(name,'reuse','visible');
set(gcf, 'MenuBar', 'figure');
set(gcf, 'ToolBar', 'figure');



% --- Executes on selection change in ListBoxFiles.
function ListBoxFiles_Callback(hObject, eventdata, handles)
% hObject    handle to ListBoxFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ListBoxFiles contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ListBoxFiles


% --- Executes during object creation, after setting all properties.
function ListBoxFiles_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ListBoxFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ClearFiles.
function ClearFiles_Callback(hObject, eventdata, handles)
% hObject    handle to ClearFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ListBoxFiles,'string','No files Selected')


% --- Executes on button press in SelectFiles.
function SelectFiles_Callback(hObject, eventdata, handles)
% hObject    handle to SelectFiles (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname, filterindex] = uigetfile( ...
{  '*.txt','Text Files';'*.csv','csv';'*.*',  'All Files (*.*)'}, ...
   'Pick a file', ...
   'MultiSelect', 'on');
if length(filename) ==1
    filename ='No files Selected';
end
set(handles.uitableCC,'data',cell(4,2))
set(handles.ListBoxFiles,'string',filename)
set(handles.ListBoxFiles,'UserData',pathname)


% --- Executes on button press in Previous.
function Previous_Callback(hObject, eventdata, handles)
% hObject    handle to Previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = get(handles.Next,'UserData');
set(handles.Next,'UserData',n-1)
tab(n-1,handles)


% --- Executes on button press in HelpMethods.
function HelpMethods_Callback(hObject, eventdata, handles)
% hObject    handle to HelpMethods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

msgbox({ string('For more information of S&N about the documentations and software as well as contact information')+...
    string('please direct to http://marodriguezf.sitios.ing.uc.cl/S&N.html'),'',string('Please cite the present document/paper/software as:')...
    ,string('Spikes and Nets (S&N) a new fast, parallel, point process software for ')+...
    string('multineuronal discharge and connectivity analysis. Valle-Araya C, Rodriguez-Fernandez M and ')+...
    string('Eblen-Zajjur A. XXXXXX, 2018; XX: XXX-XXX.')},'Help','help')


% --- Executes on selection change in GrupoCC1.
function GrupoCC1_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC1


% --- Executes during object creation, after setting all properties.
function GrupoCC1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC2.
function GrupoCC2_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC2


% --- Executes during object creation, after setting all properties.
function GrupoCC2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC3.
function GrupoCC3_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC3


% --- Executes during object creation, after setting all properties.
function GrupoCC3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC4.
function GrupoCC4_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC4


% --- Executes during object creation, after setting all properties.
function GrupoCC4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC5.
function GrupoCC5_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC5


% --- Executes during object creation, after setting all properties.
function GrupoCC5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC6.
function GrupoCC6_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC6


% --- Executes during object creation, after setting all properties.
function GrupoCC6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC7.
function GrupoCC7_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC7


% --- Executes during object creation, after setting all properties.
function GrupoCC7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC8.
function GrupoCC8_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC8


% --- Executes during object creation, after setting all properties.
function GrupoCC8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC9.
function GrupoCC9_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC9


% --- Executes during object creation, after setting all properties.
function GrupoCC9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC10.
function GrupoCC10_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC10


% --- Executes during object creation, after setting all properties.
function GrupoCC10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC11.
function GrupoCC11_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC11


% --- Executes during object creation, after setting all properties.
function GrupoCC11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC12.
function GrupoCC12_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC12


% --- Executes during object creation, after setting all properties.
function GrupoCC12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC13.
function GrupoCC13_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC13


% --- Executes during object creation, after setting all properties.
function GrupoCC13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC14.
function GrupoCC14_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC14


% --- Executes during object creation, after setting all properties.
function GrupoCC14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC15.
function GrupoCC15_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC15


% --- Executes during object creation, after setting all properties.
function GrupoCC15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC16.
function GrupoCC16_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC16 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC16


% --- Executes during object creation, after setting all properties.
function GrupoCC16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC1_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC1 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC1 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC3_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC3 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC3 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC4_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC4 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC4 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC9_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC9 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC9 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC13_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC13 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC13 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC14_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC14 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC14 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC15_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC15 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC15 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC16_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC16 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC16 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC10_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC10 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC10 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC11_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC11 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC11 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC12_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC12 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC12 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC5_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC5 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC5 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC6_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC6 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC6 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC7_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC7 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC7 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC8_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC8 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC8 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC2_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC2 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC2 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Groups1.
function Groups1_Callback(hObject, eventdata, handles)
% hObject    handle to Groups1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','on')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups2.
function Groups2_Callback(hObject, eventdata, handles)
% hObject    handle to Groups2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','on')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups3.
function Groups3_Callback(hObject, eventdata, handles)
% hObject    handle to Groups3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','on')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups6.
function Groups6_Callback(hObject, eventdata, handles)
% hObject    handle to Groups6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','on')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups4.
function Groups4_Callback(hObject, eventdata, handles)
% hObject    handle to Groups4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','on')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups5.
function Groups5_Callback(hObject, eventdata, handles)
% hObject    handle to Groups5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','on')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','off')


% --- Executes on button press in Groups7.
function Groups7_Callback(hObject, eventdata, handles)
% hObject    handle to Groups7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PanelCC,'visible','off')
set(handles.PanelCC2,'visible','off')
set(handles.PanelCC3,'visible','off')
set(handles.PanelCC4,'visible','off')
set(handles.PanelCC5,'visible','off')
set(handles.PanelCC6,'visible','off')
set(handles.PanelCC7,'visible','on')


% --- Executes on selection change in GrupoCC17.
function GrupoCC17_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC17 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC17


% --- Executes during object creation, after setting all properties.
function GrupoCC17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC18.
function GrupoCC18_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC18


% --- Executes during object creation, after setting all properties.
function GrupoCC18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC19.
function GrupoCC19_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC19 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC19


% --- Executes during object creation, after setting all properties.
function GrupoCC19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC20.
function GrupoCC20_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC20


% --- Executes during object creation, after setting all properties.
function GrupoCC20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC21.
function GrupoCC21_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC21 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC21


% --- Executes during object creation, after setting all properties.
function GrupoCC21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC22.
function GrupoCC22_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC22 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC22


% --- Executes during object creation, after setting all properties.
function GrupoCC22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC23.
function GrupoCC23_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC23 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC23


% --- Executes during object creation, after setting all properties.
function GrupoCC23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC24.
function GrupoCC24_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC24 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC24


% --- Executes during object creation, after setting all properties.
function GrupoCC24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC25.
function GrupoCC25_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC25 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC25


% --- Executes during object creation, after setting all properties.
function GrupoCC25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC26.
function GrupoCC26_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC26 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC26


% --- Executes during object creation, after setting all properties.
function GrupoCC26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC27.
function GrupoCC27_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC27


% --- Executes during object creation, after setting all properties.
function GrupoCC27_CreateFcn(hObject, eventdata, ~)
% hObject    handle to GrupoCC27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC28.
function GrupoCC28_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC28 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC28


% --- Executes during object creation, after setting all properties.
function GrupoCC28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC29.
function GrupoCC29_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC29 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC29


% --- Executes during object creation, after setting all properties.
function GrupoCC29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC30.
function GrupoCC30_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC30 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC30


% --- Executes during object creation, after setting all properties.
function GrupoCC30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC31.
function GrupoCC31_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC31 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC31


% --- Executes during object creation, after setting all properties.
function GrupoCC31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC32.
function GrupoCC32_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC32 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC32


% --- Executes during object creation, after setting all properties.
function GrupoCC32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC17_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC17 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC17 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC19_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC19 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC19 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC20_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC20 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC20 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC25_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC25 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC25 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC29_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC29 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC29 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC30_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC30 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC30 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC31_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC31 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC31 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC32_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC32 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC32 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC26_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC26 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC26 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC27_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC27 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC27 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC28_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC28 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC28 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC21_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC21 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC21 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC22_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC22 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC22 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC23_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC23 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC23 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC24_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC24 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC24 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC18_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC18 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC18 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC49.
function GrupoCC49_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC49 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC49


% --- Executes during object creation, after setting all properties.
function GrupoCC49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC50.
function GrupoCC50_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC50 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC50


% --- Executes during object creation, after setting all properties.
function GrupoCC50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC51.
function GrupoCC51_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC51 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC51


% --- Executes during object creation, after setting all properties.
function GrupoCC51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC52.
function GrupoCC52_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC52 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC52


% --- Executes during object creation, after setting all properties.
function GrupoCC52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC53.
function GrupoCC53_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC53 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC53


% --- Executes during object creation, after setting all properties.
function GrupoCC53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC54.
function GrupoCC54_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC54 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC54


% --- Executes during object creation, after setting all properties.
function GrupoCC54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC55.
function GrupoCC55_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC55 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC55


% --- Executes during object creation, after setting all properties.
function GrupoCC55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC56.
function GrupoCC56_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC56 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC56


% --- Executes during object creation, after setting all properties.
function GrupoCC56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC57.
function GrupoCC57_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC57 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC57


% --- Executes during object creation, after setting all properties.
function GrupoCC57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC58.
function GrupoCC58_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC58 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC58


% --- Executes during object creation, after setting all properties.
function GrupoCC58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC59.
function GrupoCC59_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC59 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC59


% --- Executes during object creation, after setting all properties.
function GrupoCC59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC60.
function GrupoCC60_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC60 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC60


% --- Executes during object creation, after setting all properties.
function GrupoCC60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC61.
function GrupoCC61_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC61 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC61


% --- Executes during object creation, after setting all properties.
function GrupoCC61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC62.
function GrupoCC62_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC62 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC62


% --- Executes during object creation, after setting all properties.
function GrupoCC62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC63.
function GrupoCC63_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC63 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC63


% --- Executes during object creation, after setting all properties.
function GrupoCC63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC64.
function GrupoCC64_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC64 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC64


% --- Executes during object creation, after setting all properties.
function GrupoCC64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC49_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC49 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC49 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC51_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC51 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC51 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC51_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC52_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC52 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC52 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC52_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC57_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC57 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC57 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC61_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC61 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC61 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC61_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC62_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC62 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC62 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC62_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC63_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC63 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC63 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC64_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC64 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC64 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC64_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC58_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC58 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC58 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC58_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC59_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC59 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC59 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC59_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC60_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC60 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC60 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC60_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC53_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC53 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC53 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC53_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC54_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC54 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC54 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC54_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC55_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC55 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC55 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC55_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC56_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC56 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC56 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC50_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC50 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC50 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC33.
function GrupoCC33_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC33 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC33


% --- Executes during object creation, after setting all properties.
function GrupoCC33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC34.
function GrupoCC34_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC34 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC34


% --- Executes during object creation, after setting all properties.
function GrupoCC34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC35.
function GrupoCC35_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC35 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC35


% --- Executes during object creation, after setting all properties.
function GrupoCC35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC36.
function GrupoCC36_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC36 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC36


% --- Executes during object creation, after setting all properties.
function GrupoCC36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC37.
function GrupoCC37_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC37 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC37


% --- Executes during object creation, after setting all properties.
function GrupoCC37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC38.
function GrupoCC38_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC38 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC38


% --- Executes during object creation, after setting all properties.
function GrupoCC38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC39.
function GrupoCC39_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC39 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC39


% --- Executes during object creation, after setting all properties.
function GrupoCC39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC40.
function GrupoCC40_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC40 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC40


% --- Executes during object creation, after setting all properties.
function GrupoCC40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC41.
function GrupoCC41_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC41 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC41


% --- Executes during object creation, after setting all properties.
function GrupoCC41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC42.
function GrupoCC42_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC42 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC42


% --- Executes during object creation, after setting all properties.
function GrupoCC42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC43.
function GrupoCC43_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC43 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC43


% --- Executes during object creation, after setting all properties.
function GrupoCC43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC44.
function GrupoCC44_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC44 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC44


% --- Executes during object creation, after setting all properties.
function GrupoCC44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC45.
function GrupoCC45_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC45 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC45


% --- Executes during object creation, after setting all properties.
function GrupoCC45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC46.
function GrupoCC46_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC46 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC46


% --- Executes during object creation, after setting all properties.
function GrupoCC46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC47.
function GrupoCC47_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC47 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC47


% --- Executes during object creation, after setting all properties.
function GrupoCC47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC48.
function GrupoCC48_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC48 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC48


% --- Executes during object creation, after setting all properties.
function GrupoCC48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC33_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC33 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC33 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC35_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC35 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC35 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC36_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC36 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC36 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC41_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC41 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC41 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC45_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC45 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC45 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC46_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC46 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC46 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC46_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC47_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC47 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC47 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC48_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC48 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC48 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC48_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC42_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC42 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC42 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC43_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC43 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC43 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC44_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC44 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC44 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC37_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC37 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC37 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC38_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC38 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC38 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC39_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC39 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC39 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC40_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC40 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC40 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC34_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC34 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC34 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC65.
function GrupoCC65_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC65 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC65


% --- Executes during object creation, after setting all properties.
function GrupoCC65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC66.
function GrupoCC66_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC66 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC66


% --- Executes during object creation, after setting all properties.
function GrupoCC66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC67.
function GrupoCC67_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC67 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC67


% --- Executes during object creation, after setting all properties.
function GrupoCC67_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC68.
function GrupoCC68_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC68 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC68


% --- Executes during object creation, after setting all properties.
function GrupoCC68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC69.
function GrupoCC69_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC69 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC69


% --- Executes during object creation, after setting all properties.
function GrupoCC69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC70.
function GrupoCC70_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC70 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC70


% --- Executes during object creation, after setting all properties.
function GrupoCC70_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC71.
function GrupoCC71_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC71 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC71


% --- Executes during object creation, after setting all properties.
function GrupoCC71_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC72.
function GrupoCC72_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC72 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC72


% --- Executes during object creation, after setting all properties.
function GrupoCC72_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC73.
function GrupoCC73_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC73 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC73


% --- Executes during object creation, after setting all properties.
function GrupoCC73_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC74.
function GrupoCC74_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC74 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC74


% --- Executes during object creation, after setting all properties.
function GrupoCC74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC75.
function GrupoCC75_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC75 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC75


% --- Executes during object creation, after setting all properties.
function GrupoCC75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC76.
function GrupoCC76_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC76 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC76


% --- Executes during object creation, after setting all properties.
function GrupoCC76_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC77.
function GrupoCC77_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC77 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC77


% --- Executes during object creation, after setting all properties.
function GrupoCC77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC78.
function GrupoCC78_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC78 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC78


% --- Executes during object creation, after setting all properties.
function GrupoCC78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC79.
function GrupoCC79_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC79 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC79


% --- Executes during object creation, after setting all properties.
function GrupoCC79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC80.
function GrupoCC80_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC80 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC80


% --- Executes during object creation, after setting all properties.
function GrupoCC80_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC65_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC65 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC65 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC65_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC67_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC67 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC67 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC67_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC68_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC68 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC68 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC68_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC73_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC73 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC73 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC73_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC77_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC77 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC77 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC77_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC78_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC78 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC78 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC78_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC79_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC79 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC79 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC79_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC80_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC80 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC80 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC80_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC74_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC74 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC74 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC74_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC75_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC75 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC75 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC75_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC76_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC76 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC76 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC76_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC69_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC69 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC69 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC69_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC70_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC70 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC70 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC70_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC71_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC71 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC71 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC71_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC72_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC72 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC72 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC72_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC66_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC66 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC66 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC66_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC81.
function GrupoCC81_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC81 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC81


% --- Executes during object creation, after setting all properties.
function GrupoCC81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC82.
function GrupoCC82_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC82 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC82


% --- Executes during object creation, after setting all properties.
function GrupoCC82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC83.
function GrupoCC83_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC83 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC83


% --- Executes during object creation, after setting all properties.
function GrupoCC83_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC84.
function GrupoCC84_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC84 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC84


% --- Executes during object creation, after setting all properties.
function GrupoCC84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC85.
function GrupoCC85_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC85 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC85


% --- Executes during object creation, after setting all properties.
function GrupoCC85_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC86.
function GrupoCC86_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC86 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC86


% --- Executes during object creation, after setting all properties.
function GrupoCC86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC87.
function GrupoCC87_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC87 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC87


% --- Executes during object creation, after setting all properties.
function GrupoCC87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC88.
function GrupoCC88_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC88 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC88


% --- Executes during object creation, after setting all properties.
function GrupoCC88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC89.
function GrupoCC89_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC89 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC89


% --- Executes during object creation, after setting all properties.
function GrupoCC89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC90.
function GrupoCC90_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC90 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC90


% --- Executes during object creation, after setting all properties.
function GrupoCC90_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC91.
function GrupoCC91_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC91 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC91


% --- Executes during object creation, after setting all properties.
function GrupoCC91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC92.
function GrupoCC92_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC92 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC92


% --- Executes during object creation, after setting all properties.
function GrupoCC92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC93.
function GrupoCC93_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC93 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC93


% --- Executes during object creation, after setting all properties.
function GrupoCC93_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC94.
function GrupoCC94_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC94 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC94


% --- Executes during object creation, after setting all properties.
function GrupoCC94_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC95.
function GrupoCC95_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC95 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC95


% --- Executes during object creation, after setting all properties.
function GrupoCC95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC96.
function GrupoCC96_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC96 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC96


% --- Executes during object creation, after setting all properties.
function GrupoCC96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC81_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC81 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC81 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC81_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC83_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC83 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC83 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC83_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC84_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC84 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC84 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC84_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC89_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC89 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC89 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC93_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC93 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC93 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC93_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC94_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC94 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC94 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC94_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC95_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC95 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC95 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC96_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC96 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC96 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC90_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC90 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC90 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC90_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC91_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC91 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC91 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC92_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC92 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC92 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC85_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC85 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC85 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC85_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC86_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC86 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC86 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC86_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC87_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC87 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC87 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC87_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC88_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC88 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC88 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC88_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC82_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC82 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC82 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC82_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC97.
function GrupoCC97_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC97 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC97


% --- Executes during object creation, after setting all properties.
function GrupoCC97_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC98.
function GrupoCC98_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC98 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC98


% --- Executes during object creation, after setting all properties.
function GrupoCC98_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC99.
function GrupoCC99_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC99 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC99


% --- Executes during object creation, after setting all properties.
function GrupoCC99_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC100.
function GrupoCC100_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC100 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC100


% --- Executes during object creation, after setting all properties.
function GrupoCC100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC101.
function GrupoCC101_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC101 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC101


% --- Executes during object creation, after setting all properties.
function GrupoCC101_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC102.
function GrupoCC102_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC102 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC102


% --- Executes during object creation, after setting all properties.
function GrupoCC102_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC103.
function GrupoCC103_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC103 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC103


% --- Executes during object creation, after setting all properties.
function GrupoCC103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC104.
function GrupoCC104_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC104 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC104


% --- Executes during object creation, after setting all properties.
function GrupoCC104_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC105.
function GrupoCC105_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC105 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC105


% --- Executes during object creation, after setting all properties.
function GrupoCC105_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC106.
function GrupoCC106_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC106 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC106


% --- Executes during object creation, after setting all properties.
function GrupoCC106_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC107.
function GrupoCC107_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC107 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC107


% --- Executes during object creation, after setting all properties.
function GrupoCC107_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC108.
function GrupoCC108_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC108 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC108


% --- Executes during object creation, after setting all properties.
function GrupoCC108_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC109.
function GrupoCC109_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC109 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC109


% --- Executes during object creation, after setting all properties.
function GrupoCC109_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC110.
function GrupoCC110_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC110 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC110


% --- Executes during object creation, after setting all properties.
function GrupoCC110_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC111.
function GrupoCC111_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC111 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC111


% --- Executes during object creation, after setting all properties.
function GrupoCC111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GrupoCC112.
function GrupoCC112_Callback(hObject, eventdata, handles)
% hObject    handle to GrupoCC112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GrupoCC112 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GrupoCC112


% --- Executes during object creation, after setting all properties.
function GrupoCC112_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GrupoCC112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC97_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC97 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC97 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC97_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC99_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC99 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC99 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC99_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC100_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC100 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC100 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC105_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC105 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC105 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC105_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC109_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC109 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC109 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC109_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC110_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC110 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC110 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC110_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC111_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC111 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC111 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC112_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC112 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC112 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC112_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC106_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC106 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC106 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC106_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC107_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC107 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC107 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC107_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC108_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC108 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC108 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC108_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC101_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC101 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC101 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC101_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC102_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC102 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC102 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC102_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC103_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC103 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC103 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC103_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC104_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC104 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC104 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC104_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGroupCC98_Callback(hObject, eventdata, handles)
% hObject    handle to textGroupCC98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textGroupCC98 as text
%        str2double(get(hObject,'String')) returns contents of textGroupCC98 as a double


% --- Executes during object creation, after setting all properties.
function textGroupCC98_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGroupCC98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GroupCC.
function GroupCC_Callback(hObject, eventdata, handles)
% hObject    handle to GroupCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GroupGeneration(handles);


% --- Executes on selection change in Npartes.
function Npartes_Callback(hObject, eventdata, handles)
% hObject    handle to Npartes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Npartes contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Npartes


% --- Executes during object creation, after setting all properties.
function Npartes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Npartes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SaveFolder.
function SaveFolder_Callback(hObject, eventdata, handles)
% hObject    handle to SaveFolder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'UserData',1);
folder_name = uigetdir;
set(hObject,'UserData',folder_name);


% --- Executes on button press in RUN.
function RUN_Callback(hObject, eventdata, handles)
% hObject    handle to RUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(handles.SaveFolder,'UserData');
if get(handles.SaveFolder,'UserData')==0;
    msgbox('You must select a save folder','Error','Error')
    return
end





pause(3)
tab(4,handles)

Methods(handles)



% --- Executes on button press in Single.
function Single_Callback(hObject, eventdata, handles)
% hObject    handle to Single (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Single


% --- Executes on button press in Double.
function Double_Callback(hObject, eventdata, handles)
% hObject    handle to Double (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Double


% --- Executes on button press in Triple.
function Triple_Callback(hObject, eventdata, handles)
% hObject    handle to Triple (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Triple


% --- Executes on button press in Raster.
function Raster_Callback(hObject, eventdata, handles)
% hObject    handle to Raster (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Raster


% --- Executes on button press in AC.
function AC_Callback(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AC


% --- Executes on button press in AS.
function AS_Callback(hObject, eventdata, handles)
% hObject    handle to AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of AS


% --- Executes on button press in BU.
function BU_Callback(hObject, eventdata, handles)
% hObject    handle to BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BU


% --- Executes on button press in PO.
function PO_Callback(hObject, eventdata, handles)
% hObject    handle to PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PO


% --- Executes on button press in PHA.
function PHA_Callback(hObject, eventdata, handles)
% hObject    handle to PHA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of PHA


% --- Executes on button press in FA.
function FA_Callback(hObject, eventdata, handles)
% hObject    handle to FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of FA


% --- Executes on button press in ISIH.
function ISIH_Callback(hObject, eventdata, handles)
% hObject    handle to ISIH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ISIH


% --- Executes during object creation, after setting all properties.
function TIME_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TIME (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function TIME_Callback(hObject, eventdata, handles)
% hObject    handle to TIME (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TIME as text
%        str2double(get(hObject,'String')) returns contents of TIME as a double



function FrecuencyFormatNumber_Callback(hObject, eventdata, handles)
% hObject    handle to FrecuencyFormatNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FrecuencyFormatNumber as text
%        str2double(get(hObject,'String')) returns contents of FrecuencyFormatNumber as a double


% --- Executes during object creation, after setting all properties.
function FrecuencyFormatNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FrecuencyFormatNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in TimeFormatNumber.
function TimeFormatNumber_Callback(hObject, eventdata, handles)
% hObject    handle to TimeFormatNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TimeFormatNumber contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TimeFormatNumber
format = get(hObject,'value');

switch format
    case 1
        set(handles.BinWidthText,'string',"Bin Width (ms)" )
        set(handles.TIMETEXT,'string',"Time Window (ms)" )
        set(handles.text37,'string',"Bin Width (ms)" )
        set(handles.text38,'string',"Time Window (ms)" )
    case 2
        set(handles.BinWidthText,'string',"Bin Width (sec)")
        set(handles.TIMETEXT,'string',"Time Window (sec)")
        set(handles.text37,'string',"Bin Width (sec)" )
        set(handles.text38,'string',"Time Window (sec)" )
    case 3
        set(handles.BinWidthText,'string',"Bin Width (min)")
        set(handles.TIMETEXT,'string',"Time Window (min)")
        set(handles.text37,'string',"Bin Width (min)" )
        set(handles.text38,'string',"Time Window (min)" )
    case 4
        set(handles.BinWidthText,'string',"Bin Width (days)")
        set(handles.TIMETEXT,'string',"Time Window (days)")
        set(handles.text37,'string',"Bin Width (days)" )
        set(handles.text38,'string',"Time Window (days)" )
end

       



% --- Executes during object creation, after setting all properties.
function TimeFormatNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TimeFormatNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_ISI.
function SRA_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_ISI contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_ISI


% --- Executes during object creation, after setting all properties.
function SRA_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BinWidthValue_Callback(hObject, eventdata, handles)
% hObject    handle to BinWidthValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BinWidthValue as text
%        str2double(get(hObject,'String')) returns contents of BinWidthValue as a double


% --- Executes during object creation, after setting all properties.
function BinWidthValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BinWidthValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BinWidthValueJISD_Callback(hObject, eventdata, handles)
% hObject    handle to BinWidthValueJISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BinWidthValueJISD as text
%        str2double(get(hObject,'String')) returns contents of BinWidthValueJISD as a double


% --- Executes during object creation, after setting all properties.
function BinWidthValueJISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BinWidthValueJISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to BW_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_ISI as text
%        str2double(get(hObject,'String')) returns contents of BW_ISI as a double


% --- Executes during object creation, after setting all properties.
function BW_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_AC_Callback(hObject, eventdata, handles)
% hObject    handle to BW_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_AC as text
%        str2double(get(hObject,'String')) returns contents of BW_AC as a double


% --- Executes during object creation, after setting all properties.
function BW_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_AS_Callback(hObject, eventdata, handles)
% hObject    handle to BW_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_AS as text
%        str2double(get(hObject,'String')) returns contents of BW_AS as a double


% --- Executes during object creation, after setting all properties.
function BW_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_BU_Callback(hObject, eventdata, handles)
% hObject    handle to BW_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_BU as text
%        str2double(get(hObject,'String')) returns contents of BW_BU as a double


% --- Executes during object creation, after setting all properties.
function BW_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_PO_Callback(hObject, eventdata, handles)
% hObject    handle to BW_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_PO as text
%        str2double(get(hObject,'String')) returns contents of BW_PO as a double


% --- Executes during object creation, after setting all properties.
function BW_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_FA_Callback(hObject, eventdata, handles)
% hObject    handle to BW_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_FA as text
%        str2double(get(hObject,'String')) returns contents of BW_FA as a double


% --- Executes during object creation, after setting all properties.
function BW_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_PA_Callback(hObject, eventdata, handles)
% hObject    handle to BW_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_PA as text
%        str2double(get(hObject,'String')) returns contents of BW_PA as a double


% --- Executes during object creation, after setting all properties.
function BW_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to TW_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_ISI as text
%        str2double(get(hObject,'String')) returns contents of TW_ISI as a double


% --- Executes during object creation, after setting all properties.
function TW_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_AC_Callback(hObject, eventdata, handles)
% hObject    handle to TW_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_AC as text
%        str2double(get(hObject,'String')) returns contents of TW_AC as a double


% --- Executes during object creation, after setting all properties.
function TW_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_AS_Callback(hObject, eventdata, handles)
% hObject    handle to TW_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_AS as text
%        str2double(get(hObject,'String')) returns contents of TW_AS as a double


% --- Executes during object creation, after setting all properties.
function TW_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_BU_Callback(hObject, eventdata, handles)
% hObject    handle to TW_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_BU as text
%        str2double(get(hObject,'String')) returns contents of TW_BU as a double


% --- Executes during object creation, after setting all properties.
function TW_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_PO_Callback(hObject, eventdata, handles)
% hObject    handle to TW_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_PO as text
%        str2double(get(hObject,'String')) returns contents of TW_PO as a double


% --- Executes during object creation, after setting all properties.
function TW_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_FA_Callback(hObject, eventdata, handles)
% hObject    handle to TW_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_FA as text
%        str2double(get(hObject,'String')) returns contents of TW_FA as a double


% --- Executes during object creation, after setting all properties.
function TW_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_PA_Callback(hObject, eventdata, handles)
% hObject    handle to TW_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_PA as text
%        str2double(get(hObject,'String')) returns contents of TW_PA as a double


% --- Executes during object creation, after setting all properties.
function TW_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_ISI.
function SN_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to SN_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_ISI contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_ISI


% --- Executes during object creation, after setting all properties.
function SN_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_AC.
function SN_AC_Callback(hObject, eventdata, handles)
% hObject    handle to SN_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_AC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_AC


% --- Executes during object creation, after setting all properties.
function SN_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_AS.
function SN_AS_Callback(hObject, eventdata, handles)
% hObject    handle to SN_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_AS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_AS


% --- Executes during object creation, after setting all properties.
function SN_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_BU.
function SN_BU_Callback(hObject, eventdata, handles)
% hObject    handle to SN_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_BU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_BU


% --- Executes during object creation, after setting all properties.
function SN_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_PO.
function SN_PO_Callback(hObject, eventdata, handles)
% hObject    handle to SN_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_PO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_PO


% --- Executes during object creation, after setting all properties.
function SN_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_FA.
function SN_FA_Callback(hObject, eventdata, handles)
% hObject    handle to SN_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_FA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_FA


% --- Executes during object creation, after setting all properties.
function SN_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_PA.
function SN_PA_Callback(hObject, eventdata, handles)
% hObject    handle to SN_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_PA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_PA


% --- Executes during object creation, after setting all properties.
function SN_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_AC.
function SRA_AC_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_AC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_AC


% --- Executes during object creation, after setting all properties.
function SRA_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_AS.
function SRA_AS_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_AS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_AS


% --- Executes during object creation, after setting all properties.
function SRA_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_BU.
function SRA_BU_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_BU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_BU


% --- Executes during object creation, after setting all properties.
function SRA_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_PO.
function SRA_PO_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_PO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_PO


% --- Executes during object creation, after setting all properties.
function SRA_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_FA.
function SRA_FA_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_FA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_FA


% --- Executes during object creation, after setting all properties.
function SRA_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_PA.
function SRA_PA_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_PA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_PA


% --- Executes during object creation, after setting all properties.
function SRA_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_ISI.
function FIG_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_ISI contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_ISI


% --- Executes during object creation, after setting all properties.
function FIG_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_AC.
function FIG_AC_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_AC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_AC


% --- Executes during object creation, after setting all properties.
function FIG_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_AS.
function FIG_AS_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_AS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_AS


% --- Executes during object creation, after setting all properties.
function FIG_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_BU.
function FIG_BU_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_BU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_BU


% --- Executes during object creation, after setting all properties.
function FIG_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_PO.
function FIG_PO_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_PO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_PO


% --- Executes during object creation, after setting all properties.
function FIG_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_FA.
function FIG_FA_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_FA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_FA


% --- Executes during object creation, after setting all properties.
function FIG_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_PA.
function FIG_PA_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_PA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_PA


% --- Executes during object creation, after setting all properties.
function FIG_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_ISI.
function PDF_ISI_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_ISI contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_ISI


% --- Executes during object creation, after setting all properties.
function PDF_ISI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_ISI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_AC.
function PDF_AC_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_AC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_AC


% --- Executes during object creation, after setting all properties.
function PDF_AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_AS.
function PDF_AS_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_AS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_AS


% --- Executes during object creation, after setting all properties.
function PDF_AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_BU.
function PDF_BU_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_BU contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_BU


% --- Executes during object creation, after setting all properties.
function PDF_BU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_BU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_PO.
function PDF_PO_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_PO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_PO


% --- Executes during object creation, after setting all properties.
function PDF_PO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_PO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_FA.
function PDF_FA_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_FA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_FA


% --- Executes during object creation, after setting all properties.
function PDF_FA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_FA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_PA.
function PDF_PA_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_PA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_PA


% --- Executes during object creation, after setting all properties.
function PDF_PA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_PA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to BW_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_ALL as text
%        str2double(get(hObject,'String')) returns contents of BW_ALL as a double
value = str2num(get(handles.BW_ALL,'string'));
if length(value)>=2
    msgbox("Please use '.' for decimals numbers.", 'Error','error')
    return
end
set([handles.BW_ISI,
    handles.BW_AC,
    handles.BW_AS,
    handles.BW_BU,
    handles.BW_PO,
    handles.BW_FA,
    handles.BW_PA],'string',char(string(value)))










% --- Executes during object creation, after setting all properties.
function BW_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to TW_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_ALL as text
%        str2double(get(hObject,'String')) returns contents of TW_ALL as a double
value = str2num(get(handles.TW_ALL,'string'));
if length(value)>=2
    msgbox("Please use '.' for decimals numbers.", 'Error','error')
    return
end
set([handles.TW_ISI,
    handles.TW_AC,
    handles.TW_AS,
    handles.TW_BU,
    handles.TW_PO,
    handles.TW_FA,
    handles.TW_PA],'string',char(string(value)))









% --- Executes during object creation, after setting all properties.
function TW_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_ALL.
function SN_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to SN_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_ALL contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_ALL
value = (get(handles.SN_ALL,'value'));
if length(value)>=2
    msgbox("Please use '.' for decimals numbers.", 'Error','error')
    return
end
set([handles.SN_ISI,
    handles.SN_AC,
    handles.SN_AS,
    handles.SN_BU,
    handles.SN_PO,
    handles.SN_FA,
    handles.SN_PA],'value',value)







% --- Executes during object creation, after setting all properties.
function SN_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SRA_ALL.
function SRA_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to SRA_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SRA_ALL contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SRA_ALL


% --- Executes during object creation, after setting all properties.
function SRA_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRA_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_ALL.
function FIG_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_ALL contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_ALL
clc
value = (get(handles.FIG_ALL,'value'));



set([handles.FIG_ISI,
    handles.FIG_AC,
    handles.FIG_AS,
    handles.FIG_BU,
    handles.FIG_PO,
    handles.FIG_FA,
    handles.FIG_PA],'value',value)







% --- Executes during object creation, after setting all properties.
function FIG_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_ALL.
function PDF_ALL_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_ALL contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_ALL
clc
value = (get(handles.PDF_ALL,'value'));
set([handles.PDF_ISI,
    handles.PDF_AC,
    handles.PDF_AS,
    handles.PDF_BU,
    handles.PDF_PO,
    handles.PDF_FA,
    handles.PDF_PA],'value',value)







% --- Executes during object creation, after setting all properties.
function PDF_ALL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_ALL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on BW_ALL and none of its controls.
function BW_ALL_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to BW_ALL (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BoxSnow.
function radiobutton19_Callback(hObject, eventdata, handles)
% hObject    handle to BoxSnow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BoxSnow


% --- Executes on button press in radiobutton20.
function radiobutton20_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton20


% --- Executes on button press in BoxCC.
function radiobutton21_Callback(hObject, eventdata, handles)
% hObject    handle to BoxCC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BoxCC



function BW_CC_Callback(hObject, eventdata, handles)
% hObject    handle to BW_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_CC as text
%        str2double(get(hObject,'String')) returns contents of BW_CC as a double


% --- Executes during object creation, after setting all properties.
function BW_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to BW_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_JISD as text
%        str2double(get(hObject,'String')) returns contents of BW_JISD as a double


% --- Executes during object creation, after setting all properties.
function BW_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BW_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to BW_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BW_ALLC as text
%        str2double(get(hObject,'String')) returns contents of BW_ALLC as a double
clc
value = str2num(get(handles.BW_ALLC,'string'));

if length(value)>=2
    msgbox("Please use '.' for decimals numbers.", 'Error','error')
    return
end

set([handles.BW_CC,
    handles.BW_JISD],'string',char(string(value)))






% --- Executes during object creation, after setting all properties.
function BW_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BW_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_CC_Callback(hObject, eventdata, handles)
% hObject    handle to TW_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_CC as text
%        str2double(get(hObject,'String')) returns contents of TW_CC as a double


% --- Executes during object creation, after setting all properties.
function TW_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to TW_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_JISD as text
%        str2double(get(hObject,'String')) returns contents of TW_JISD as a double


% --- Executes during object creation, after setting all properties.
function TW_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TW_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to TW_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TW_ALLC as text
%        str2double(get(hObject,'String')) returns contents of TW_ALLC as a double

clc
value = str2num(get(handles.TW_ALLC,'string'));
if length(value)>=2
    msgbox("Please use '.' for decimals numbers.", 'Error','error')
    return
end


set([handles.TW_CC,
    handles.TW_JISD],'string',char(string(value)))



% --- Executes during object creation, after setting all properties.
function TW_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TW_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_CC.
function SN_CC_Callback(hObject, eventdata, handles)
% hObject    handle to SN_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_CC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_CC


% --- Executes during object creation, after setting all properties.
function SN_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_JISD.
function SN_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to SN_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_JISD contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_JISD


% --- Executes during object creation, after setting all properties.
function SN_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SN_ALLC.
function SN_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to SN_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SN_ALLC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SN_ALLC

clc
value = (get(handles.SN_ALLC,'value'));






set([handles.SN_CC,
    handles.SN_JISD],'value',value)



% --- Executes during object creation, after setting all properties.
function SN_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RA_CC.
function RA_CC_Callback(hObject, eventdata, handles)
% hObject    handle to RA_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RA_CC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RA_CC


% --- Executes during object creation, after setting all properties.
function RA_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RA_JISD.
function RA_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to RA_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RA_JISD contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RA_JISD


% --- Executes during object creation, after setting all properties.
function RA_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RA_ALLC.
function RA_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to RA_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RA_ALLC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RA_ALLC


% --- Executes during object creation, after setting all properties.
function RA_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_CC.
function FIG_CC_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_CC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_CC


% --- Executes during object creation, after setting all properties.
function FIG_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_JISD.
function FIG_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_JISD contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_JISD


% --- Executes during object creation, after setting all properties.
function FIG_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in FIG_ALLC.
function FIG_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to FIG_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FIG_ALLC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FIG_ALLC
clc
value = (get(handles.FIG_ALLC,'value'));

set([handles.FIG_CC,
    handles.FIG_JISD],'value',value)




% --- Executes during object creation, after setting all properties.
function FIG_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FIG_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
    

% --- Executes on selection change in PDF_CC.
function PDF_CC_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_CC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_CC


% --- Executes during object creation, after setting all properties.
function PDF_CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_JISD.
function PDF_JISD_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_JISD contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_JISD


% --- Executes during object creation, after setting all properties.
function PDF_JISD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_JISD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in PDF_ALLC.
function PDF_ALLC_Callback(hObject, eventdata, handles)
% hObject    handle to PDF_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PDF_ALLC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PDF_ALLC
clc
value = (get(handles.PDF_ALLC,'value'));



set([handles.PDF_CC,
    handles.PDF_JISD],'value',value)



% --- Executes during object creation, after setting all properties.
function PDF_ALLC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PDF_ALLC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SegRaster.
function SegRaster_Callback(hObject, eventdata, handles)
% hObject    handle to SegRaster (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SegRaster contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SegRaster


% --- Executes during object creation, after setting all properties.
function SegRaster_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SegRaster (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxf_Callback(hObject, eventdata, handles)
% hObject    handle to maxf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxf as text
%        str2double(get(hObject,'String')) returns contents of maxf as a double


% --- Executes during object creation, after setting all properties.
function maxf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
