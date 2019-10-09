clc
close all;
clear all;

mm=input('enter the no of cycle msg');
fm=input('enter frequency msg');
am=input('enter the amplitude msg');
mc=input('enter the no of cycle cry');
fc=input('enter frequency cry');
ac=input('enter the amplitude cry');

%message
x1=0:0.0001:mm/fm;
y1=am*cos(2*pi*fm*x1);
subplot(3,1,1),stem(x1,y1);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('message');

% carrier

x2=0:0.0001:mc/fc;
y2=cos(2*pi*fc*x2);

subplot(3,1,2),stem(x2,ac*y2);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('carrier');

% am
x=0:0.0001:1;
p=[ac+y1]*y2;

subplot(3,1,3),stem(x,p);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('mod');






% 
% %plot
% subplot(3,1,1),stem(x1,y1);
% xlabel('time');
% ylabel('amplitude');
% legend('x(n)');
% title('message');
% 
% 
% subplot(3,1,2),stem(x2,y2);
% xlabel('time');
% ylabel('amplitude');
% legend('x(n)');
% title('carrier');
% 
% 
% subplot(3,1,3),stem(x,q);
% xlabel('time');
% ylabel('amplitude');
% legend('x(n)');
% title('mod');
% hold on;