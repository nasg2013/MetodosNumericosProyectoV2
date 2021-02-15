function varargout = gaussjordan_gui(varargin)
%GAUSSJORDAN_GUI MATLAB code file for gaussjordan_gui.fig
%      GAUSSJORDAN_GUI, by itself, creates a new GAUSSJORDAN_GUI or raises the existing
%      singleton*.
%
%      H = GAUSSJORDAN_GUI returns the handle to a new GAUSSJORDAN_GUI or the handle to
%      the existing singleton*.
%
%      GAUSSJORDAN_GUI('Property','Value',...) creates a new GAUSSJORDAN_GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gaussjordan_gui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GAUSSJORDAN_GUI('CALLBACK') and GAUSSJORDAN_GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GAUSSJORDAN_GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gaussjordan_gui

% Last Modified by GUIDE v2.5 23-Jan-2021 19:12:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gaussjordan_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gaussjordan_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before gaussjordan_gui is made visible.
function gaussjordan_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for gaussjordan_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gaussjordan_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gaussjordan_gui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function FilaTam_Callback(hObject, eventdata, handles)
% hObject    handle to FilaTam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FilaTam as text
%        str2double(get(hObject,'String')) returns contents of FilaTam as a double


% --- Executes during object creation, after setting all properties.
function FilaTam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FilaTam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in insertarTabla.
function insertarTabla_Callback(hObject, eventdata, handles)
% hObject    handle to insertarTabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FilaTam= str2double(get(handles.FilaTam,'String'));
ColTam= str2double(get(handles.ColTam,'String'));
tamano=cell(FilaTam,ColTam);
tamano(:,:)={''};
set(handles.TableGauss,'Data',tamano);
set(handles.TableGauss,'ColumnEditable',true);




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.TableGauss,'data');
A=str2double(A);
[n n] = size(A);
[fi,co]=size(A);
%se llama la funcion det
result= GaussJordan(A);
set(handles.RespuestaTable,'data',result);

%set(handles.edit_respuesta,'String',result);





% --- Executes during object creation, after setting all properties.
function insertarTabla_CreateFcn(hObject, eventdata, handles)
% hObject    handle to insertarTabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called






function ColTam_Callback(hObject, eventdata, handles)
% hObject    handle to ColTam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ColTam as text
%        str2double(get(hObject,'String')) returns contents of ColTam as a double


% --- Executes during object creation, after setting all properties.
function ColTam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ColTam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FilaTam= 0;
ColTam= 0;
tamano=cell(FilaTam,ColTam);
tamano(:,:)={''};

set(handles.TableGauss,'Data',tamano);
set(handles.TableGauss,'ColumnEditable',false);

set(handles.RespuestaTable,'Data',tamano);
set(handles.RespuestaTable,'ColumnEditable',false);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gaussjordan_gui())
menu()
