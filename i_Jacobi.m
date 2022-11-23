function varargout = i_Jacobi(varargin)
% JACOBI MATLAB code for Jacobi.fig
%      JACOBI, by itself, creates a new JACOBI or raises the existing
%      singleton*.
%
%      H = JACOBI returns the handle to a new JACOBI or the handle to
%      the existing singleton*.
%
%      JACOBI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JACOBI.M with the given input arguments.
%
%      JACOBI('Property','Value',...) creates a new JACOBI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Jacobi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Jacobi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Jacobi

% Last Modified by GUIDE v2.5 16-Nov-2022 10:16:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @i_Jacobi_OpeningFcn, ...
                   'gui_OutputFcn',  @i_Jacobi_OutputFcn, ...
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


% --- Executes just before Jacobi is made visible.
function i_Jacobi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Jacobi (see VARARGIN)

% Choose default command line output for Jacobi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Jacobi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = i_Jacobi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in botonCalcular.
function botonCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to botonCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

A=str2double(get(handles.uitable1,'data'));
B=str2double(get(handles.uitable6,'data'));

xi=str2double(get(handles.vi,'data'));

ni=str2double(get(handles.ni,'String'));



N = rank(A);    % Número de incógnitas del sistema de ecuaciones.
D = zeros(N);   % Inicializa la matriz D en ceros.
L = zeros(N);   % Inicializa la matriz L en ceros.
U = zeros(N);   % Inicializa la matriz U en ceros.
K1 = diag(A);   % Asigna la diagonal de A a un vector.
D = diag(K1);   % Asigna el vector con la diagonal de A a la diagonal de D.
A = A-D;        % Elimina la diagonal de la matriz A.
% Ciclo para hacer la asignación de las matrices triangulares.
for k = 1:N-1
    L(k:N,k) = A(k:N,k);
    U(k,k:N) = A(k,k:N);
end
% Cálculo del número de iteraciones.
F  = -inv(D)*(L+U);            % Cálculo de los valores propios.
Rs = max(abs(eig(F)));         % Módulo del valor propio de disminución más lento.
p  = 6;                        % Régimen de convergencia.
Ni = (p*log(10))/(-log(Rs));   % Número de iteraciones en valor real.
Nm = fix(Ni)+1                % Número de iteraciones enteras.
X  = zeros(N,Nm);              % Matriz de N * Nm donde se guardan los resultados de 
       % cada iteración.
X(:,1)=xi;                   % Condiciones iniciales para iniciar el proceso
       % iterativo.
% Ciclo iterativo del método de Jacobi.
for k=2:ni
    X(:,k) = F*X(:,k-1) + inv(D)*B;
end
X   % Muestra en la pantalla el resultado de todas las iteraciones. 




 
 set(handles.respuesta,'Data',X'); 



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in botonTamano.
function botonTamano_Callback(hObject, eventdata, handles)
% hObject    handle to botonTamano (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




filas=str2double(get(handles.edit1,'String'));
num_elem=cell(filas,filas);
num_elem(:,:)={''};
set(handles.uitable1,'Data',num_elem);
set(handles.uitable1,'ColumnEditable',true());

num_elem=cell(filas,1);
num_elem(:,:)={''};
set(handles.uitable6,'Data',num_elem);
set(handles.uitable6,'ColumnEditable',true());

num_elem=cell(filas,1);
num_elem(:,:)={''};
set(handles.vi,'Data',num_elem);
set(handles.vi,'ColumnEditable',true());


% --- Executes when entered data in editable cell(s) in uitable6.
function uitable6_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable6 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in vi.
vi
% hObject    handle to vi (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
