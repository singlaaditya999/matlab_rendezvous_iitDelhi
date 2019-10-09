clc
close all;
clear all;
t=0:0.0001:1;
kf=input('enter the constant value');
fm=input('enter frequency msg');
am=input('enter the amplitude msg');
fc=input('enter frequency cry');
ac=input('enter the amplitude cry');
x=(kf*am)/fm;
p=sin(2*pi*fm*t).*x;
q=(2*pi*fc*t);
y=ac*cos(q+p);
grid on;
hold on;



% %plot
% subplot(3,1,1),plot(t,m);
% xlabel('time');
% ylabel('amplitude');
% legend('M(t)');
% title('MESSAGE');
% 
% 
% subplot(3,1,2),plot(t,c);
% xlabel('time');
% ylabel('amplitude');
% legend('Ac.COSWct');
% title('CARRIER');

% figure(2)
%subplot(3,1,3),
plot(t,y);
%plot(t,mod);
xlabel('time');
ylabel('amplitude');
legend('X(t)');
title('MODULATED OUTOUT');
