function varargout = trazadorCubico_gui(varargin)
% TRAZADORCUBICO_GUI MATLAB code for trazadorCubico_gui.fig
%      TRAZADORCUBICO_GUI, by itself, creates a new TRAZADORCUBICO_GUI or raises the existing
%      singleton*.
%
%      H = TRAZADORCUBICO_GUI returns the handle to a new TRAZADORCUBICO_GUI or the handle to
%      the existing singleton*.
%
%      TRAZADORCUBICO_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAZADORCUBICO_GUI.M with the given input arguments.
%
%      TRAZADORCUBICO_GUI('Property','Value',...) creates a new TRAZADORCUBICO_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trazadorCubico_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trazadorCubico_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trazadorCubico_gui

% Last Modified by GUIDE v2.5 06-Feb-2021 16:30:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trazadorCubico_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @trazadorCubico_gui_OutputFcn, ...
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


% --- Executes just before trazadorCubico_gui is made visible.
function trazadorCubico_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trazadorCubico_gui (see VARARGIN)

% Choose default command line output for trazadorCubico_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trazadorCubico_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trazadorCubico_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(trazadorCubico_gui())
trazadorCubicoMenu_gui()


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

X=get(handles.xTable,'data');
X=str2double(X);

Y=get(handles.fxTable,'data');
Y=str2double(Y);

n=str2double(get(handles.tamVector,'String'));

%Y=[0.9798652 0.9177710 0.8080348 0.6386093 0.3843735];
%X=[0.2 0.4 0.6 0.8 1.0];

result=trazadorCubico(n,X,Y);

set(handles.resultTable,'Data',result);



function tamVector_Callback(hObject, eventdata, handles)
% hObject    handle to tamVector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tamVector as text
%        str2double(get(hObject,'String')) returns contents of tamVector as a double


% --- Executes during object creation, after setting all properties.
function tamVector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tamVector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tamVectores.
function tamVectores_Callback(hObject, eventdata, handles)
% hObject    handle to tamVectores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tamVector= str2double(get(handles.tamVector,'String'));

FilaTam= 1;
ColTam= tamVector;
tamano=cell(FilaTam,ColTam);
tamano(:,:)={''};

set(handles.xTable,'Data',tamano);
set(handles.xTable,'ColumnEditable',true);

set(handles.fxTable,'Data',tamano);
set(handles.fxTable,'ColumnEditable',true);
