function varargout = calculadora(varargin)
% calculadora MATLAB code for calculadora.fig
%      calculadora, by itself, creates a new calculadora or raises the existing
%      singleton*.
%
%      H = calculadora returns the handle to a new calculadora or the handle to
%      the existing singleton*.
%
%      calculadora('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in calculadora.M with the given input arguments.
%
%      calculadora('Property','Value',...) creates a new calculadora or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculadora_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculadora_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculadora

% Last Modified by GUIDE v2.5 21-Oct-2020 20:00:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculadora_OpeningFcn, ...
                   'gui_OutputFcn',  @calculadora_OutputFcn, ...
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


% --- Executes just before calculadora is made visible.
function calculadora_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculadora (see VARARGIN)

% Choose default command line output for calculadora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculadora wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculadora_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inA_Callback(hObject, eventdata, handles)
% hObject    handle to inA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inA as text
%        str2double(get(hObject,'String')) returns contents of inA as a double


% --- Executes during object creation, after setting all properties.
function inA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menuA.
function menuA_Callback(hObject, eventdata, handles)

global A1;
global num1;
A=get(handles.inA,'String');
v= get(handles.menuA,'Value');

 switch v
     case 1
         f= 'Recuerde que un numero Binario no contiene digitos superiores a 9';
         A1= decimal_binario(A);
         num1 = binarioVector_binarioString(A1);
         set(handles.convA,'String',num1)
         set(handles.nota,'String',f)
     case 2
         f= 'Recuerde que un numero Binario no contiene digitos superiores a 1';
         for i=1:length(A)
             if A(i)=='0'
                 num1= A;
                 A1= binarioString_binarioVector(A);
             elseif A(i)=='1'
                 num1= A;
                 A1= binarioString_binarioVector(A);                 
             else
                 num1= 0;
                 A1= 0;
                 break;                 
             end
         end
         set(handles.convA,'String', num1)
         set(handles.nota,'String', f)
         
     case 3
         f='Recuerde que un numero Octal no contiene digitos superiores a 7';
         A1= octal_binario(A);
         num1 = binarioVector_binarioString(A1);
         set(handles.convA,'String',num1)
         set(handles.nota,'String',f)
         
     case 4
         f='Recuerde que un numero Hexadecimal no contiene digitos superiores a F';
         A1= hexadecimal_binario(A);
         num1 = binarioVector_binarioString(A1);
         set(handles.convA,'String',num1)
         set(handles.nota,'String',f)
end

% --- Executes during object creation, after setting all properties.
function menuA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function convA_Callback(hObject, eventdata, handles)
% hObject    handle to convA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of convA as text
%        str2double(get(hObject,'String')) returns contents of convA as a double


% --- Executes during object creation, after setting all properties.
function convA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to convA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in menuB.
function menuB_Callback(hObject, eventdata, handles)

global A2;
global num2;
A=get(handles.inB,'String');
v= get(handles.menuB,'Value');

 switch v
     case 1
         f= 'Recuerde que un numero decimal no contiene digitos superiores a 9';
         A2= decimal_binario(A);
         num2 = binarioVector_binarioString(A2);
         set(handles.convB,'String',num2)
         set(handles.nota,'String',f)
     case 2
         f= 'Recuerde que un numero Binario no contiene digitos superiores a 1';
         for i=1:length(A)
             if A(i)=='0'
                 num2= A;
                 A2= binarioString_binarioVector(A);
             elseif A(i)=='1'
                 num2= A;
                 A2= binarioString_binarioVector(A);
             else
                 num2= 0;
                 A2= 0;
                 break;                 
             end
         end
         set(handles.convB,'String',num2)
         set(handles.nota,'String',f)
         
     case 3
         f='Recuerde que un numero Octal no contiene digitos superiores a 7';
         A2= octal_binario(A);
         num2 = binarioVector_binarioString(A2);
         set(handles.convB,'String',num2)
         set(handles.nota,'String',f)
         
     case 4
         f='Recuerde que un numero Hexadecimal no contiene digitos superiores a F';
         A2= hexadecimal_binario(A);
         num2 = binarioVector_binarioString(A2);
         set(handles.convB,'String',num2)
         set(handles.nota,'String',f)
 end

% --- Executes during object creation, after setting all properties.
function menuB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inB_Callback(hObject, eventdata, handles)
% hObject    handle to inB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inB as text
%        str2double(get(hObject,'String')) returns contents of inB as a double


% --- Executes during object creation, after setting all properties.
function inB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function convB_Callback(hObject, eventdata, handles)
% hObject    handle to convB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of convB as text
%        str2double(get(hObject,'String')) returns contents of convB as a double


% --- Executes during object creation, after setting all properties.
function convB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to convB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in operacion.
function operacion_Callback(hObject, eventdata, handles)

global A1;
global A2;
global c;
global d;
global num;
v = get(handles.operacion,'Value');

switch v
    case 1
       c = sumaBinaria(A1, A2);
       num = binarioVector_binarioString(c);
       set(handles.resultadoBin,'String', num) 
    case 2
       [c, d] = restaBinaria(A1, A2);
       num = binarioVector_binarioString(c);
       set(handles.resultadoBin,'String', num)
       set(handles.nota,'String', d)          
    case 3
       c = multiplicacionBinaria(A1, A2);
       num = binarioVector_binarioString(c);
       set(handles.resultadoBin,'String', num) 
    case 4
       if length(A2)==1
         if A2==0
            f= 'La division entre 0 no esta definida';
            num= 'ERROR';
            set(handles.nota,'String',f) 
            set(handles.resultadoBin,'String', num)
         else
            c = divisionBinaria(A1, A2);
            num = binarioVector_binarioString(c);
            set(handles.resultadoBin,'String', num) 
         end      
       else
         c = divisionBinaria(A1, A2);
         num = binarioVector_binarioString(c);
         set(handles.resultadoBin,'String', num)        
       end
end

% --- Executes during object creation, after setting all properties.
function operacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultadoBin_Callback(hObject, eventdata, handles)
% hObject    handle to resultadoBin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultadoBin as text
%        str2double(get(hObject,'String')) returns contents of resultadoBin as a double


% --- Executes during object creation, after setting all properties.
function resultadoBin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultadoBin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in convResultado.
function convResultado_Callback(hObject, eventdata, handles)

global A3;
global c;
v= get(handles.convResultado,'Value');
 
 switch v
     case 1
         A3= binario_decimal(c);
         set(handles.resultadoConv,'String',A3) 
     case 2
         A3= binarioVector_binarioString(c);
         set(handles.resultadoConv,'String',A3)
     case 3
         A3= binario_octal(c);
         set(handles.resultadoConv,'String',A3)
     case 4 
         A3= binario_hexadecimal(c);
         set(handles.resultadoConv,'String',A3)
end

% --- Executes during object creation, after setting all properties.
function convResultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to convResultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resultadoConv_Callback(hObject, eventdata, handles)
% hObject    handle to resultadoConv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultadoConv as text
%        str2double(get(hObject,'String')) returns contents of resultadoConv as a double


% --- Executes during object creation, after setting all properties.
function resultadoConv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultadoConv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nota_Callback(hObject, eventdata, handles)
% hObject    handle to nota (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nota as text
%        str2double(get(hObject,'String')) returns contents of nota as a double


% --- Executes during object creation, after setting all properties.
function nota_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nota (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
