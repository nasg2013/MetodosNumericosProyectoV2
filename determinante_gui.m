function varargout = determinante_gui(varargin)
% DETERMINANTE_GUI MATLAB code for determinante_gui.fig
%      DETERMINANTE_GUI, by itself, creates a new DETERMINANTE_GUI or raises the existing
%      singleton*.
%
%      H = DETERMINANTE_GUI returns the handle to a new DETERMINANTE_GUI or the handle to
%      the existing singleton*.
%
%      DETERMINANTE_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DETERMINANTE_GUI.M with the given input arguments.
%
%      DETERMINANTE_GUI('Property','Value',...) creates a new DETERMINANTE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before determinante_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to determinante_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help determinante_gui

% Last Modified by GUIDE v2.5 23-Jan-2021 17:22:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @determinante_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @determinante_gui_OutputFcn, ...
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


% --- Executes just before determinante_gui is made visible.
function determinante_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to determinante_gui (see VARARGIN)

% Choose default command line output for determinante_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes determinante_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = determinante_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_matriz_Callback(hObject, eventdata, handles)
% hObject    handle to edit_matriz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_matriz as text
%        str2double(get(hObject,'String')) returns contents of edit_matriz as a double


% --- Executes during object creation, after setting all properties.
function edit_matriz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_matriz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_determinante.
function btn_determinante_Callback(hObject, eventdata, handles)

A = get(handles.tabla,'data');
A=str2double(A);

[n n] = size(A);

[fi,co]=size(A);

%se llama la funcion det
result= determinante(A);

set(handles.edit_respuesta,'String',result); 

function edit_respuesta_Callback(hObject, eventdata, handles)
% hObject    handle to edit_respuesta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_respuesta as text
%        str2double(get(hObject,'String')) returns contents of edit_respuesta as a double


% --- Executes during object creation, after setting all properties.
function edit_respuesta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_respuesta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_tam_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tam as text
%        str2double(get(hObject,'String')) returns contents of edit_tam as a double


% --- Executes during object creation, after setting all properties.
function edit_tam_CreateFcn(hObject, eventdata, handles)




% --- Executes on button press in btn_tam.
function btn_tam_Callback(hObject, eventdata, handles)

tamMatriz= str2double(get(handles.edit_tam,'String'));
tamano=cell(tamMatriz,tamMatriz);
tamano(:,:)={''};
set(handles.tabla,'Data',tamano);
set(handles.tabla,'ColumnEditable',true(1,tamMatriz));

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% hObject    handle to btn_LU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_borrar.
function btn_borrar_Callback(hObject, eventdata, handles)

tamMatriz= 0;
tamano=cell(tamMatriz,tamMatriz);
tamano(:,:)={''};

set(handles.tabla,'Data',tamano);
set(handles.tabla,'ColumnEditable',true(1,tamMatriz));

set(handles.edit_respuesta,'String',"");


% hObject    handle to btn_borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(determinante_gui())
menu()
