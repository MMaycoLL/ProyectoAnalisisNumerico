function varargout = M_Gauss_Seidel(varargin)
% M_GAUSS_SEIDEL MATLAB code for M_Gauss_Seidel.fig
%      M_GAUSS_SEIDEL, by itself, creates a new M_GAUSS_SEIDEL or raises the existing
%      singleton*.
%
%      H = M_GAUSS_SEIDEL returns the handle to a new M_GAUSS_SEIDEL or the handle to
%      the existing singleton*.
%
%      M_GAUSS_SEIDEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in M_GAUSS_SEIDEL.M with the given input arguments.
%
%      M_GAUSS_SEIDEL('Property','Value',...) creates a new M_GAUSS_SEIDEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before M_Gauss_Seidel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to M_Gauss_Seidel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help M_Gauss_Seidel

% Last Modified by GUIDE v2.5 13-Oct-2022 14:28:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @M_Gauss_Seidel_OpeningFcn, ...
                   'gui_OutputFcn',  @M_Gauss_Seidel_OutputFcn, ...
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


% --- Executes just before M_Gauss_Seidel is made visible.
function M_Gauss_Seidel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to M_Gauss_Seidel (see VARARGIN)

% Choose default command line output for M_Gauss_Seidel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes M_Gauss_Seidel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = M_Gauss_Seidel_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Calcular

A=str2double(get(handles.uitable1,'data'));
B=str2double(get(handles.uitable2,'data'));

xi=str2double(get(handles.vi,'data'));

ni=str2double(get(handles.ni,'String'));


N = rank(A);
% Ciclo iterativo para normalizar los pivotes de las ecuaciones.
for k = 1:N
    B(k,1)   = B(k,1)/A(k,k);
    A(k,:) = A(k,:)/A(k,k);
end
D = eye(N);     % La matriz D es igual a la matriz identidad.
L = zeros(N);   % Inicializa la matriz L en ceros.
U = zeros(N);   % Inicializa la matriz U en ceros.
A = A-D;        % Elimina la diagonal de la matriz A.
% Ciclo para hacer la asignación de las matrices triangulares.
for k = 1:N-1
    L(k:N,k) = A(k:N,k);



    
        U(k,k:N) = A(k,k:N);
end
% Cálculo del número de iteraciones.
F  = -inv(D+L)*U;              % Cálculo de los valores propios.
Rs = max(abs(eig(F)));         % Módulo del valor propio de disminución más lento.
p  = 6;                        % Régimen de convergencia.
Ni = (p*log(10))/(-log(Rs));   % Número de iteraciones en valor real.
Nm = fix(Ni)+1;                % Número de iteraciones enteras.
X  = zeros(N,Nm);              % Matriz de N * Nm donde se guardan los resultados de
       % cada iteración.
X(:,1)=xi;                   % Condiciones iniciales para iniciar el proceso
       % iterativo.
% Ciclo iterativo del método de Gausss-Seidel.
for k=2:ni
    X(:,k) = F*X(:,k-1) + inv(D+L)*B;
end
X   % Muestra en la pantalla el resultado de todas las iteraciones. 

           


 
 set(handles.respuesta,'Data',X'); 

 



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

matr=cell(columna,columna);
matr(:,:)={''};

matr2=cell(columna,1);
matr2(:,:)={''};

matr3=cell(columna,1);
matr3(:,:)={''};



set(handles.uitable1,'Data',matr);
set(handles.uitable1,'ColumnEditable',true(1,columna));
set(handles.uitable1,'Visible','on');


set(handles.uitable2,'Data',matr2);
set(handles.uitable2,'ColumnEditable',true(1,columna));
set(handles.uitable2,'Visible','on');


set(handles.vi,'Data',matr3);
set(handles.vi,'ColumnEditable',true(1,columna));
set(handles.vi,'Visible','on');



function ni_Callback(hObject, eventdata, handles)
% hObject    handle to ni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ni as text
%        str2double(get(hObject,'String')) returns contents of ni as a double


% --- Executes during object creation, after setting all properties.
function ni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
