function varargout = M_Lagrange(varargin)
% M_LAGRANGE MATLAB code for M_Lagrange.fig
%      M_LAGRANGE, by itself, creates a new M_LAGRANGE or raises the existing
%      singleton*.
%
%      H = M_LAGRANGE returns the handle to a new M_LAGRANGE or the handle to
%      the existing singleton*.
%
%      M_LAGRANGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in M_LAGRANGE.M with the given input arguments.
%
%      M_LAGRANGE('Property','Value',...) creates a new M_LAGRANGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before M_Lagrange_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to M_Lagrange_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M_Lagrange

% Last Modified by GUIDE v2.5 05-Jun-2016 08:15:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M_Lagrange_OpeningFcn, ...
                   'gui_OutputFcn',  @M_Lagrange_OutputFcn, ...
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


% --- Executes just before M_Lagrange is made visible.
function M_Lagrange_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to M_Lagrange (see VARARGIN)

% Choose default command line output for M_Lagrange
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M_Lagrange wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M_Lagrange_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ingreso_Callback(hObject, eventdata, handles)
% hObject    handle to ingreso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ingreso as text
%        str2double(get(hObject,'String')) returns contents of ingreso as a double


% --- Executes during object creation, after setting all properties.
function ingreso_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingreso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function niteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to niteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of niteraciones as text
%        str2double(get(hObject,'String')) returns contents of niteraciones as a double


% --- Executes during object creation, after setting all properties.
function niteraciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to niteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vinicial_Callback(hObject, eventdata, handles)
% hObject    handle to vinicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vinicial as text
%        str2double(get(hObject,'String')) returns contents of vinicial as a double


% --- Executes during object creation, after setting all properties.
function vinicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vinicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function superi_Callback(hObject, eventdata, handles)
% hObject    handle to superi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of superi as text
%        str2double(get(hObject,'String')) returns contents of superi as a double


% --- Executes during object creation, after setting all properties.
function superi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to superi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in computar.
function computar_Callback(hObject, eventdata, handles)
% hObject    handle to computar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Calcular

x=str2double(get(handles.uitable1,'data'));
fx=str2double(get(handles.uitable2,'data'));

x=x'
fx=fx'


% Número de muestras
N = length(x);
% Rutina para calcular los coeficientes.
for k=1:N
    for m=1:N
        if k==m
            ind = 1;                 % Índice para omitir el dato cuando k=m.
        else
            FN(k,m-ind) = x(m);      % Factores del numerador (raíces del polinomio).
            FD(k,m-ind) = x(k)-x(m); % Factores del denominador.
        end
    end
    ind = 0;                         % Se pone en cero para sólo omitir el caso k=m.
end
% Cálculo de los coeficientes del numerador de cada polinomio.
for k = 1:N
    CN(k,:) = poly(FN(k,:));
end
Fac = prod(FD,2);   % Multiplica los factores de cada denominador.
% Rutina para multiplicar cada polinomio por el factor correspondiente.
for k = 1:N
    Multi(k,:) = CN(k,:)*fx(k)/Fac(k);
end
Coef = sum(Multi);        % Calcula los coeficientes del polinomio interpolador.
xp  = (2:0.01:14);         % Vector por evaluar en puntos entre el límite inferior y  
% superior.
Fxp = polyval(Coef,xp);   % Evaluación de la función en todos los puntos propuestos.
% Gráficas de los puntos iniciales y el polinomio interpolador.
plot(x,fx,'o',xp,Fxp,'r'); legend('Puntos iniciales','Polinomio interpolador') 
 
set(handles.erre,'Data',Coef'); 

 















% --- Executes on selection change in qu.
function iteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to qu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns qu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from qu


% --- Executes during object creation, after setting all properties.
function qu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function grado_Callback(hObject, eventdata, handles)
% hObject    handle to grado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of grado as text
%        str2double(get(hObject,'String')) returns contents of grado as a double


% --- Executes during object creation, after setting all properties.
function grado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)



function po_Callback(hObject, eventdata, handles)
% hObject    handle to vinicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vinicial as text
%        str2double(get(hObject,'String')) returns contents of vinicial as a double


% --- Executes during object creation, after setting all properties.
function po_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vinicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qo_Callback(hObject, eventdata, handles)
% hObject    handle to qo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qo as text
%        str2double(get(hObject,'String')) returns contents of qo as a double


% --- Executes during object creation, after setting all properties.
function qo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to ingreso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ingreso as text
%        str2double(get(hObject,'String')) returns contents of ingreso as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ingreso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)


columna=str2double(get(handles.grado,'string'));

matr=cell(1,columna);
matr(:,:)={''};
set(handles.uitable1,'Data',matr);
set(handles.uitable1,'ColumnEditable',true(1,columna+1));
set(handles.uitable1,'Visible','on');


set(handles.uitable2,'Data',matr);
set(handles.uitable2,'ColumnEditable',true(1,columna+1));
set(handles.uitable2,'Visible','on');
