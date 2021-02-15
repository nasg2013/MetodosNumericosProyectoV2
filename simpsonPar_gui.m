function varargout = simpsonPar_gui(varargin)
% SIMPSONPAR_GUI MATLAB code for simpsonPar_gui.fig
%      SIMPSONPAR_GUI, by itself, creates a new SIMPSONPAR_GUI or raises the existing
%      singleton*.
%
%      H = SIMPSONPAR_GUI returns the handle to a new SIMPSONPAR_GUI or the handle to
%      the existing singleton*.
%
%      SIMPSONPAR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPSONPAR_GUI.M with the given input arguments.
%
%      SIMPSONPAR_GUI('Property','Value',...) creates a new SIMPSONPAR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simpsonPar_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simpsonPar_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simpsonPar_gui

% Last Modified by GUIDE v2.5 10-Feb-2021 22:59:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simpsonPar_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @simpsonPar_gui_OutputFcn, ...
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


% --- Executes just before simpsonPar_gui is made visible.
function simpsonPar_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simpsonPar_gui (see VARARGIN)

% Choose default command line output for simpsonPar_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simpsonPar_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simpsonPar_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function aTxt_Callback(hObject, eventdata, handles)
% hObject    handle to aTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aTxt as text
%        str2double(get(hObject,'String')) returns contents of aTxt as a double


% --- Executes during object creation, after setting all properties.
function aTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bTxt_Callback(hObject, eventdata, handles)
% hObject    handle to bTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bTxt as text
%        str2double(get(hObject,'String')) returns contents of bTxt as a double


% --- Executes during object creation, after setting all properties.
function bTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nTxt_Callback(hObject, eventdata, handles)
% hObject    handle to nTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nTxt as text
%        str2double(get(hObject,'String')) returns contents of nTxt as a double


% --- Executes during object creation, after setting all properties.
function nTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fTxt_Callback(hObject, eventdata, handles)
% hObject    handle to fTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fTxt as text
%        str2double(get(hObject,'String')) returns contents of fTxt as a double


% --- Executes during object creation, after setting all properties.
function fTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorTxt_Callback(hObject, eventdata, handles)
% hObject    handle to errorTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorTxt as text
%        str2double(get(hObject,'String')) returns contents of errorTxt as a double


% --- Executes during object creation, after setting all properties.
function errorTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultadoTxt_Callback(hObject, eventdata, handles)
% hObject    handle to resultadoTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultadoTxt as text
%        str2double(get(hObject,'String')) returns contents of resultadoTxt as a double


% --- Executes during object creation, after setting all properties.
function resultadoTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultadoTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcularBtn.
function calcularBtn_Callback(hObject, eventdata, handles)
% hObject    handle to calcularBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = str2sym(get(handles.fTxt,'String'));
a = str2double(get(handles.aTxt,'String'));
b = str2double(get(handles.bTxt,'String'));
n = str2double(get(handles.nTxt,'String'));

[resultado,error]=simpsonPar(f,a,b,n);

set(handles.resultadoTxt,'String',resultado);
set(handles.errorTxt,'String',error);


% --- Executes on button press in menuBtn.
function menuBtn_Callback(hObject, eventdata, handles)
% hObject    handle to menuBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(simpsonPar_gui);
menu();
