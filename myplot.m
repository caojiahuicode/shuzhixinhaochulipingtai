function myplot(B,A)
%myplot;����ʱ����ɢϵͳ��ĺ�������������ͼ��
%B Ϊϵͳ�������Ӷ���ʽϵ������
%A Ϊϵͳ������ĸ����ʽϵ������
[H,W]=freqz(B,A,1000);
m=abs(H);
plot(W/pi,20*log10(m/max(m)));grid on;
xlabel('\omega/\pi');ylabel('����(dB)');
axis([0,1,-80,5]);title('��ĺ�������');
