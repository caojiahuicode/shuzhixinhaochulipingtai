
function tstem(xn,yn)

%ʱ�����л�ͼ����

%xn:����ͼ���ź��������У�yn:��ͼ�źŵ����������ƣ��ַ�����

n=0:length(xn)-1;

stem(n,xn,'.');

xlabel('n');ylabel('yn');

axis([0,n(end),min(xn),1.2*max(xn)]);
