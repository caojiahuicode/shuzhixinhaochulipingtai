function tplot(xn,T,yn)

%ʱ�������������߻�ͼ����

%xn:�ź���������,yn:��ͼ�źŵ����������ƣ��ַ�����

%T Ϊ�������

n=0:length(xn)-1;t=n*T;

plot(t,xn);

xlabel('t/s');ylabel(yn);

axis([0,t(end),min(xn),1.2*max(xn)]);
