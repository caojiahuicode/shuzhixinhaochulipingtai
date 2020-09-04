function varargout = untitled4(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled4_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled4_OutputFcn, ...
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


% --- Executes just before untitled4 is made visible.
function untitled4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled4 (see VARARGIN)

% Choose default command line output for untitled4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
  set(handles.uipanel1, 'Visible', 'Off'); 
  set(handles.uipanel2, 'Visible', 'Off'); 
  set(handles.uipanel3, 'Visible', 'Off');



% --- Outputs from this function are returned to the command line.
function varargout = untitled4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
            switch get(hObject,'value')
             case 1 
                 
                 
                        set(handles.uipanel1, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel1, 'Visible', 'On'); 

                        set(handles.uipanel2, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel2, 'Visible', 'Off');
                        
                        set(handles.uipanel3, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel3, 'Visible', 'Off');
                        
                        set(handles.uipanel4, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel4, 'Visible', 'Off');
             case 2
                  
                 
                        set(handles.uipanel1, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel1, 'Visible', 'Off'); 

                        set(handles.uipanel2, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel2, 'Visible', 'On');
                        
                        set(handles.uipanel3, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel3, 'Visible', 'Off');
                        
                       
                
                 
             case 3
                 
                                  
                 
                        set(handles.uipanel1, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel1, 'Visible', 'Off'); 

                        set(handles.uipanel2, 'Position', [173.8 47.357 50.2 13.643]);

                        set(handles.uipanel2, 'Visible', 'Off');
                        
                        set(handles.uipanel3, 'Position', [173.8 47.357 50.2 13.643]);

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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- ��ͨ.
function pushbutton3_Callback(hObject, eventdata, handles)
Fs=10000;T=1/Fs;	%����Ƶ��

%�����źŲ������� mstg ��������·�����ز������ź���ӹ��ɵĸ����ź� st
st=mstg;

%  fpl=440;      fpu=560;

%   fsl=275;     fsu=900;

%��ȡ�ı���6���ַ���
fp1 = get(handles.edit6, 'string');
%���ַ���ת��Ϊ����
fp1 = str2num(fp1);        
%��ȡ�ı���7���ַ���
fs1 = get(handles.edit7, 'string');
%���ַ���ת��Ϊ����
fs1 = str2num(fs1);  

%��ȡ�ı���8���ַ���
fpu = get(handles.edit8, 'string');
%���ַ���ת��Ϊ����
fpu = str2num(fpu);        
%��ȡ�ı���9���ַ���
fsu = get(handles.edit9, 'string');
%���ַ���ת��Ϊ����
fsu = str2num(fsu);  


wp=[2*fpl/Fs,2*fpu/Fs];

ws=[2*fsl/Fs,2*fsu/Fs];

rp=0.1;rs=60;

[N,wp]=ellipord(wp,ws,rp,rs);	%���� ellipord ������Բ DF ���� N ��ͨ����ֹƵ�� wp

[B,A]=ellip(N,rp,rs,wp);	%���� ellip ������Բ��ͨ DF ϵͳ����ϵ������ B �� A

y2t=filter(B,A,st);	%�˲������ʵ��

%	��ͨ�˲��������ʵ�ֻ�ͼ���֣�ʡ�ԣ�


subplot(2,1,1);

myplot(B,A);	%���û�ͼ���� myplot ������ĺ�������
yt='y_2(t)';

subplot(2,1,2);

tplot(y2t,T,yt);	%���û�ͼ���� tplot �����˲����������




% --- ��ͨ.
function pushbutton4_Callback(hObject, eventdata, handles)

Fs=10000;T=1/Fs;	%����Ƶ��

%�����źŲ������� mstg ��������·�����ز������ź���ӹ��ɵĸ����ź� st
st=mstg;

%  fp=890;fs=600;
%��ȡ�ı���10���ַ���
fp = get(handles.edit10, 'string');
%���ַ���ת��Ϊ����
fp = str2num(fp);        
%��ȡ�ı���11���ַ���
fs = get(handles.edit11, 'string');
%���ַ���ת��Ϊ����
fs = str2num(fs);  


wp=2*fp/Fs;

ws=2*fs/Fs;

%  rp=0.1;rs=60;	%DF ָ�꣨��ͨ�˲�����ͨ������߽�Ƶ��

%��ȡ�ı���12���ַ���
rp = get(handles.edit12, 'string');
%���ַ���ת��Ϊ����
rp = str2num(rp);        
%��ȡ�ı���13���ַ���
rs = get(handles.edit13, 'string');
%���ַ���ת��Ϊ����
rs = str2num(rs);  

[N,wp]=ellipord(wp,ws,rp,rs);	%���� ellipord ������Բ DF ���� N ��ͨ����ֹƵ�� wp

[B,A]=ellip(N,rp,rs,wp,'high');	%���� ellip ������Բ��ͨ DF ϵͳ����ϵ������ B �� A

y3t=filter(B,A,st);	%�˲������ʵ��

%	�ߵ�ͨ�˲��������ʵ�ֻ�ͼ����


subplot(2,1,1);	
myplot(B,A);	%���û�ͼ���� myplot ������ĺ�������
yt='y_3(t)';	
subplot(2,1,2);	
tplot(y3t,T,yt);	%���û�ͼ���� tplot �����˲����������

% --- ��ͨ.
function pushbutton1_Callback(hObject, eventdata, handles)

Fs=10000;T=1/Fs;	%����Ƶ��

%�����źŲ������� mstg ��������·�����ز������ź���ӹ��ɵĸ����ź� st
st=mstg;

%=====��ͨ�˲��������ʵ��=====%

%  fp=280;fs=450;
%��ȡ�ı���1���ַ���
fp = get(handles.edit1, 'string');
%���ַ���ת��Ϊ����
fp = str2num(fp);        
%��ȡ�ı���3���ַ���
fs = get(handles.edit3, 'string');
%���ַ���ת��Ϊ����
fs = str2num(fs);  
wp=2*fp/Fs;

ws=2*fs/Fs;

%  rp=0.1;rs=60;	%DF ָ�꣨��ͨ�˲�����ͨ������߽�Ƶ��


%��ȡ�ı���4���ַ���
rp = get(handles.edit4, 'string');
%���ַ���ת��Ϊ����
rp = str2num(rp);        
%��ȡ�ı���5���ַ���
rs = get(handles.edit5, 'string');
%���ַ���ת��Ϊ����
rs = str2num(rs);  



[N,wp]=ellipord(wp,ws,rp,rs);	%���� ellipord ������Բ DF ���� N ��ͨ����ֹƵ�� wp

[B,A]=ellip(N,rp,rs,wp);	%���� ellip ������Բ��ͨ DF ϵͳ����ϵ������ B �� A

y1t=filter(B,A,st);	%�˲������ʵ��


%	��ͨ�˲��������ʵ�ֻ�ͼ����
	
subplot(2,1,1);	
myplot(B,A);	%���û�ͼ���� myplot ������ĺ�������
yt='y_1(t)';	
subplot(2,1,2);	
tplot(y1t,T,yt);	%���û�ͼ���� tplot �����˲����������



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
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


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
