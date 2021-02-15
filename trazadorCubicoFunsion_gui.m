function varargout = trazadorCubicoFunsion_gui(varargin)
% TRAZADORCUBICOFUNSION_GUI MATLAB code for trazadorCubicoFunsion_gui.fig
%      TRAZADORCUBICOFUNSION_GUI, by itself, creates a new TRAZADORCUBICOFUNSION_GUI or raises the existing
%      singleton*.
%
%      H = TRAZADORCUBICOFUNSION_GUI returns the handle to a new TRAZADORCUBICOFUNSION_GUI or the handle to
%      the existing singleton*.
%
%      TRAZADORCUBICOFUNSION_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAZADORCUBICOFUNSION_GUI.M with the given input arguments.
%
%      TRAZADORCUBICOFUNSION_GUI('Property','Value',...) creates a new TRAZADORCUBICOFUNSION_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trazadorCubicoFunsion_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trazadorCubicoFunsion_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trazadorCubicoFunsion_gui

% Last Modified by GUIDE v2.5 06-Feb-2021 17:29:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trazadorCubicoFunsion_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @trazadorCubicoFunsion_gui_OutputFcn, ...
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


% --- Executes just before trazadorCubicoFunsion_gui is made visible.
function trazadorCubicoFunsion_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trazadorCubicoFunsion_gui (see VARARGIN)

% Choose default command line output for trazadorCubicoFunsion_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trazadorCubicoFunsion_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trazadorCubicoFunsion_gui_OutputFcn(hObject, eventdata, handles) 
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
close(trazadorCubicoFunsion_gui);
trazadorCubicoMenu_gui


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

funcion = str2sym(get(handles.functionTxt,'String'));
n=str2double(get(handles.tamVector,'String'));
X=get(handles.xTable,'data');
X=str2double(X);
Y=[];
funcion=inline(funcion);

index=1;
 while n>=index
        format long
        Y(index)=funcion(X(index));
        index=index+1;        
 end

result=trazadorCubico(n,X,Y)
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tamVector= str2double(get(handles.tamVector,'String'));

FilaTam= 1;
ColTam= tamVector;
tamano=cell(FilaTam,ColTam);
tamano(:,:)={''};

set(handles.xTable,'Data',tamano);
set(handles.xTable,'ColumnEditable',true);

function functionTxt_Callback(hObject, eventdata, handles)
% hObject    handle to functionTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functionTxt as text
%        str2double(get(hObject,'String')) returns contents of functionTxt as a double


% --- Executes during object creation, after setting all properties.
function functionTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
