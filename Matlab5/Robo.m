function varargout = Robo(varargin)
% ROBO MATLAB code for Robo.fig
%      ROBO, by itself, creates a new ROBO or raises the existing
%      singleton*.
%
%      H = ROBO returns the handle to a new ROBO or the handle to
%      the existing singleton*.
%
%      ROBO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBO.M with the given input arguments.
%
%      ROBO('Property','Value',...) creates a new ROBO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Robo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Robo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Robo

% Last Modified by GUIDE v2.5 01-Jun-2023 23:52:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Robo_OpeningFcn, ...
                   'gui_OutputFcn',  @Robo_OutputFcn, ...
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


% --- Executes just before Robo is made visible.
function Robo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Robo (see VARARGIN)

% Choose default command line output for Robo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Robo wait for user response (see UIRESUME)
% uiwait(handles.figure1);
A = imread ('escudoUnal_black.png');
axes(handles.position);
imagesc(A);

% --- Outputs from this function are returned to the command line.
function varargout = Robo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;
% Robot1.plot([0,0,0,0,0],'workspace',ws)
if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=deg2rad(-87);
else
    Manipulador=0;
end
joint_publisher(0,0,0,0,Manipulador)
pause(0.2)
A = imread ('escudoUnal_black.png');
axes(handles.position);
imagesc(A);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;
c=[cosd((get(handles.slider1,'Value')))*(get(handles.slider2,'Value')),sind((get(handles.slider1,'Value')))*(get(handles.slider2,'Value'))];
r=(get(handles.slider3,'Value'));
N=18;
q=zeros(N,5);
theta=linspace(0,2*pi,N);
Pos=zeros(N,3);
if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=true;
else
    Manipulador=false;
end
for i=1:N
    Pos(i,1:2)=Circulo([c(1),c(2)],theta(i),r);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q(i,2)=q(i,2)-pi/2;
end
qInOut=q(1,:);
qInOut(2)=qInOut(2)+pi/4;
q=[qInOut;q;qInOut];
% Robot1.plot(q,'workspace',ws)
A = imread ('Circulo.png');
axes(handles.position);
imagesc(A);
for i=1:length(q(:,1))
   joint_publisher(q(i,1),q(i,2),q(i,3),q(i,4),q(i,5))
   pause(0.2)
end



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;
N=5;
q1=zeros(N,5);
Pos=zeros(N,3);

c=[cosd((get(handles.slider1,'Value')))*(get(handles.slider2,'Value')),sind((get(handles.slider1,'Value')))*(get(handles.slider2,'Value'))];
r=(get(handles.slider3,'Value'));
A = imread ('Nombres.png');
axes(handles.position);
imagesc(A);


if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=true;
else
    Manipulador=false;
end


for i=1:N
    Pos(i,1:2)=linea([c(1),c(2)],[c(1),c(2)+r],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q1(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q1(i,2)=q1(i,2)-pi/2;
end

qIn1=q1(1,:);
qIn1(2)=qIn1(2)+pi/4;

qOut1=q1(N,:);
qOut1(2)=qOut1(2)+pi/4;

N=10;
q2=zeros(N,5);
theta=linspace(0,2*pi,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([c(1)+r/2,c(2)+r],theta(i),r/2);
    Pos(i,3)=60;
end

for i=1:N
    q2(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q2(i,2)=q2(i,2)-pi/2;
end

qIn2=q2(1,:);
qIn2(2)=qIn2(2)+pi/4;

N=5;
q3=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([c(1)+r,c(2)+r],[c(1)+1.1*r,c(2)],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q3(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q3(i,2)=q3(i,2)-pi/2;
end

qOut3=q3(N,:);
qOut3(2)=qOut3(2)+pi/4;

N=5;
q4=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([c(1)+1.3*r+r/10,c(2)+1.5*r],[c(1)+1.6*r,c(2)],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q4(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q4(i,2)=q4(i,2)-pi/2;
end

qIn4=q4(1,:);
qIn4(2)=qIn4(2)+pi/4;

N=5;
q5=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([c(1)+1.6*r,c(2)],[c(1)+1.9*r,c(2)+1.5*r],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q5(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q5(i,2)=q5(i,2)-pi/2;
end

qOut5=q5(N,:);
qOut5(2)=qOut5(2)+pi/4;

N=9;
q6=zeros(N,5);
theta=linspace(pi/3,2*pi-pi/3,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([c(1)+2.7*r,c(2)+3*r/4],theta(i),3*r/4);
    Pos(i,3)=60;
end

for i=1:N
    q6(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q6(i,2)=q6(i,2)-pi/2;
end

qIn6=q6(1,:);
qIn6(2)=qIn6(2)+pi/4;

qOut6=q6(N,:);
qOut6(2)=qOut6(2)+pi/4;

q=[qIn1;q1;qOut1;qIn2;q2;q3;qOut3;qIn4;q4;q5;qOut5;qIn6;q6;qOut6];
% Robot1.plot(q,'workspace',ws)
for i=1:length(q(:,1))
   joint_publisher(q(i,1),q(i,2),q(i,3),q(i,4),q(i,5))
   pause(0.2)
end    

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;
N=18;
q=zeros(N,5);
theta=linspace(0,2*pi,N);
Pos=zeros(N,3);
c=[cosd((get(handles.slider1,'Value')))*(get(handles.slider2,'Value')),sind((get(handles.slider1,'Value')))*(get(handles.slider2,'Value'))];
r=(get(handles.slider3,'Value'));
if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=true;
else
    Manipulador=false;
end
A = imread ('Cuadrado.png');
axes(handles.position);
imagesc(A);
for i=1:N
    Pos(i,1:2)=Rectangulo(c,theta(i),r);
    Pos(i,3)=60;
end
for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q(i,2)=q(i,2)-pi/2;
end
qInOut=q(1,:);
qInOut(2)=qInOut(2)+pi/4;

q=[qInOut;q;qInOut];
% Robot1.plot(q,'workspace',ws)
for i=1:length(q(:,1))
   joint_publisher(q(i,1),q(i,2),q(i,3),q(i,4),q(i,5))
   pause(0.2)
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;

N=18;
q1=zeros(N,5);
theta=linspace(-pi/2,pi/2,N);
Pos=zeros(N,3);
if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=true;
else
    Manipulador=false;
end
for i=1:N
    Pos(i,1:2)=Circulo([0,0],theta(i),180);
    Pos(i,3)=60;
end

for i=1:N
    q1(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q1(i,2)=q1(i,2)-pi/2;
end
qIn1=q1(1,:);
qIn1(2)=qIn1(2)+pi/4;

qOut1=q1(N,:);
qOut1(2)=qOut1(2)+pi/4;

N=18;
q2=zeros(N,5);
theta=linspace(pi/2-pi/12,pi/12-pi/2,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([0,0],theta(i),290);
    Pos(i,3)=60;
end

for i=1:N
    q2(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],Manipulador);
    q2(i,2)=q2(i,2)-pi/2;
end

qIn2=q2(1,:);
qIn2(2)=qIn2(2)+pi/4;

qOut2=q2(N,:);
qOut2(2)=qOut2(2)+pi/4;

q=[qIn1;q1;qOut1;qIn2;q2;qOut2];
% Robot1.plot(q,'workspace',ws)
for i=1:length(q(:,1))
   joint_publisher(q(i,1),q(i,2),q(i,3),q(i,4),q(i,5))
   pause(0.2)
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d1=138;d2=107;d3=108;d4=95;
% d=[d1; 0; 0;0;0];
% a=[0; d2;d3;d4;0];
% Alpha=[pi/2; 0; 0;-pi/2;0];
% Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;

q=zeros(4,5);
Pos=[180,-150,95];
if strcmp(get(handles.edit9,'String'),'Cerrado')
    Manipulador=true;
else
    Manipulador=false;
end
q(1,:)=iKine([76.82,-64.02,Pos(3)+80],[d1,d2,d3,d4],Manipulador);
q(1,2)=q(1,2)-pi/2;

q(2,:)=iKine([Pos(1),Pos(2),Pos(3)],[d1,d2,d3,d4],Manipulador);
q(2,2)=q(2,2)-pi/2;

Manipulador=~Manipulador;
if Manipulador
    set(handles.edit9,'String','Cerrado');
else
    set(handles.edit9,'String','Abierto');
end
q(3,:)=iKine([Pos(1),Pos(2),Pos(3)],[d1,d2,d3,d4],Manipulador);
q(3,2)=q(3,2)-pi/2;

q(4,:)=iKine([76.82,-64.02,Pos(3)+100],[d1,d2,d3,d4],Manipulador);
q(4,2)=q(4,2)-pi/2;

for i=1:length(q(:,1))
   joint_publisher(q(i,1),q(i,2),q(i,3),q(i,4),q(i,5))
   pause(0.2)
end

% Robot1.plot(q,'workspace',ws)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.edit5,'String',num2str(get(handles.slider1,'Value')))


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit6,'String',num2str(get(handles.slider2,'Value')))
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit7,'String',num2str(get(handles.slider3,'Value')))
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.edit9,'String'),'Abierto')
    set(handles.edit9,'String','Cerrado');
else
    set(handles.edit9,'String','Abierto');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
