function varargout = trazadorCubicoMenu_gui(varargin)
% TRAZADORCUBICOMENU_GUI MATLAB code for trazadorCubicoMenu_gui.fig
%      TRAZADORCUBICOMENU_GUI, by itself, creates a new TRAZADORCUBICOMENU_GUI or raises the existing
%      singleton*.
%
%      H = TRAZADORCUBICOMENU_GUI returns the handle to a new TRAZADORCUBICOMENU_GUI or the handle to
%      the existing singleton*.
%
%      TRAZADORCUBICOMENU_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAZADORCUBICOMENU_GUI.M with the given input arguments.
%
%      TRAZADORCUBICOMENU_GUI('Property','Value',...) creates a new TRAZADORCUBICOMENU_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trazadorCubicoMenu_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trazadorCubicoMenu_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trazadorCubicoMenu_gui

% Last Modified by GUIDE v2.5 06-Feb-2021 16:58:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trazadorCubicoMenu_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @trazadorCubicoMenu_gui_OutputFcn, ...
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


% --- Executes just before trazadorCubicoMenu_gui is made visible.
function trazadorCubicoMenu_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trazadorCubicoMenu_gui (see VARARGIN)

% Choose default command line output for trazadorCubicoMenu_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trazadorCubicoMenu_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trazadorCubicoMenu_gui_OutputFcn(hObject, eventdata, handles) 
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
trazadorCubico_gui();
close(trazadorCubicoMenu_gui);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
trazadorCubicoFunsion_gui();
close(trazadorCubicoMenu_gui);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(trazadorCubicoMenu_gui())
menu()
