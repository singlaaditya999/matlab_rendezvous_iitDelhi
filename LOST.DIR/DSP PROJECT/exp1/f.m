clc
close all;
clear all;
t=0:0.0001:1;
kf=input('enter the constant value');
fm=input('enter frequency msg');
am=input('enter the amplitude msg');
fc=input('enter frequency cry');
ac=input('enter the amplitude cry');
mt=cos(2*pi*fm*t);
x=int(mt,t,0,1);
y=ac*cos((2*pi*fc*t)+(2*pi*kf.*x));















grid on;
hold on;


%plot
subplot(3,1,1),plot(t,am*cos(2*pi*fm*t));
xlabel('time');
ylabel('amplitude');
legend('M(t)');
title('MESSAGE');


subplot(3,1,2),plot(t,ac*cos(2*pi*fc*t));
xlabel('time');
ylabel('amplitude');
legend('Ac.COSWct');
title('CARRIER');
integration
%figure(2)
subplot(3,1,3),plot(t,y);
xlabel('time');
ylabel('amplitude');
legend('X(t)');
title('MODULATED OUTOUT');
