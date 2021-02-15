function varargout = newton_gui(varargin)
% NEWTON_GUI MATLAB code for newton_gui.fig
%      NEWTON_GUI, by itself, creates a new NEWTON_GUI or raises the existing
%      singleton*.
%
%      H = NEWTON_GUI returns the handle to a new NEWTON_GUI or the handle to
%      the existing singleton*.
%
%      NEWTON_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON_GUI.M with the given input arguments.
%
%      NEWTON_GUI('Property','Value',...) creates a new NEWTON_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newton_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newton_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newton_gui

% Last Modified by GUIDE v2.5 10-Feb-2021 19:46:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newton_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @newton_gui_OutputFcn, ...
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


% --- Executes just before newton_gui is made visible.
function newton_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newton_gui (see VARARGIN)

% Choose default command line output for newton_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newton_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newton_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcionTxt_Callback(hObject, eventdata, handles)
% hObject    handle to funcionTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcionTxt as text
%        str2double(get(hObject,'String')) returns contents of funcionTxt as a double


% --- Executes during object creation, after setting all properties.
function funcionTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcionTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

funcion = str2sym(get(handles.funcionTxt,'String'));
p = str2double(get(handles.pTxt,'String'));
n = str2double(get(handles.iterarTxt,'String'));

syms x
    derivada = diff(funcion);
    g = (funcion/derivada);
    g=-g+x;

g=inline(g);

if(derivada ~= 0)
    index=0;
    while n>index
        format long
        p=g(p);
        resultado(1,index+1)= p;
        index = index + 1;
    end
end

FilaTam= 0;
ColTam= 3;
tamano=cell(FilaTam,ColTam);
tamano(:,:)={''};

set(handles.resulTable,'Data',tamano);
set(handles.resulTable,'ColumnEditable',false);


set(handles.resulTable,'data',resultado);

function pTxt_Callback(hObject, eventdata, handles)
% hObject    handle to pTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pTxt as text
%        str2double(get(hObject,'String')) returns contents of pTxt as a double


% --- Executes during object creation, after setting all properties.
function pTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iterarTxt_Callback(hObject, eventdata, handles)
% hObject    handle to iterarTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iterarTxt as text
%        str2double(get(hObject,'String')) returns contents of iterarTxt as a double


% --- Executes during object creation, after setting all properties.
function iterarTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iterarTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in menuTxt.
function menuTxt_Callback(hObject, eventdata, handles)
% hObject    handle to menuTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(newton_gui())
menu()
