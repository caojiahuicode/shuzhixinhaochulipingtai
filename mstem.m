function mstem(Xk)

%mstem(Xk)����Ƶ������������� Xk �ķ�Ƶ����ͼ

M=length(Xk);

k=0:M-1;wk=2*k/M;%���� M �� DFT ��Ӧ�Ĳ�����Ƶ�ʣ����� pi ��һ��ֵ��
stem(wk,abs(Xk),'.');box on;%���� M �� DFT �ķ�Ƶ����ͼxlabel('w/\pi');ylabel('����');

axis([0,2,0,1.2*max(abs(Xk))]);
