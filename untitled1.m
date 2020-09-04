function varargout = untitled1(varargin)


% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 07-Dec-2019 01:59:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for untitled1
handles.output = hObject;

handles.axes1 = handles.axes1;

% Update handles structure
guidata(hObject, handles);

   
    set(handles.uipanel2, 'Visible', 'Off'); 
    
    
    
    set(handles.uipanel3, 'Visible', 'Off');

% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- ���� filter ���ַ��̣���ϵͳ�� u(n)����Ӧ�ж��ȶ���.


function pushbutton1_Callback(hObject, eventdata, handles)

A=[1,-0.9];B=[0.05,0.05];	%ϵͳ��ַ���ϵ������ B �� A

x1n=[1 1 1 1 1 1 1 1 zeros(1,50)];	%�����ź� x1(n)=R8(n)��

x2n=ones(1,128);	%�����ź� x2(n)=u(n)��

hn=impz(B,A,58);	%��ϵͳ��λ������Ӧ h(n)

subplot(2,2,1);

y='h(n)';tstem1(hn,y);	%���ú��� tstem ��ͼ���Զ��庯�����ο���¼��

title('(a)  ϵͳ��λ������Ӧ h(n)');box on	%��ʾ���ܵı߿�Ĭ������ʾ��off ����ʾ

y1n=filter(B,A,x1n);	%��ϵͳ�� x1(n)����Ӧ y1(n)

subplot(2,2,2);

y='y1(n)';tstem1(y1n,y);

title('(b)  ϵͳ�� R8(n)����Ӧ y1(n)');box on

y2n=filter(B,A,x2n);	%��ϵͳ�� x2(n)����Ӧ y2(n)

subplot(2,2,4);

y='y2(n)';tstem1(y2n,y);

title('(c)  ϵͳ�� u(n)����Ӧ y2(n)');

box on

% --- ���� conv ����������.

function pushbutton2_Callback(hObject, eventdata, handles)

x1n=[1 1 1 1 1 1 1 1 ];	%�����ź� x1(n)=R8(n)

h1n=[ones(1,10) zeros(1,10)];

h2n=[1 2.5 2.5 1 zeros(1,10)];

y21n=conv(h1n,x1n);

y22n=conv(h2n,x1n);



subplot(2,2,1);y='h1(n)';tstem1(h1n,y);	%���ú��� tstem ��ͼ

title('(a)  ϵͳ��λ������Ӧ h1(n)');

box on

subplot(2,2,2);y='y21(n)';tstem1(y21n,y);

title('(b) h1(n)�� R8(n)�ľ�� y21(n)');

box on

subplot(2,2,3);y='h2(n)';tstem1(h2n,y);	%���ú��� tstem ��ͼ

title('(c)  ϵͳ��λ������Ӧ h2(n)');

box on

subplot(2,2,4);y='y22(n)';tstem1(y22n,y);

title('(d) h2(n)�� R8(n)�ľ�� y22(n)');

box on


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
switch get(hObject,'value')
    case 1 
     
    set(handles.uipanel2, 'Position', [129.6 24.929 40.2 10.786]);
    set(handles.uipanel3, 'Position', [129.6 24.929 40.2 10.786]);
    set(handles.uipanel2, 'Visible', 'On'); 
    set(handles.uipanel3, 'Visible', 'Off');
    case 2
        
    set(handles.uipanel2, 'Position', [129.6 24.929 40.2 10.786]);
    set(handles.uipanel3, 'Position', [129.6 24.929 40.2 10.786]);
    set(handles.uipanel2, 'Visible', 'Off'); 
    set(handles.uipanel3, 'Visible', 'On');
    
   
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
