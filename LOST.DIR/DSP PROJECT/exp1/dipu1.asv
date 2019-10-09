clc
close all;
clear all;
t=0:0.0001:1;
fm=input('enter frequency msg');
am=input('enter the amplitude msg');
fc=input('enter frequency cry');
ac=input('enter the amplitude cry');
m=am*cos(2*pi*fm*t);
c=cos(2*pi*fc*t);
x=m.*c;
mod=x+(ac.*c);







%plot
subplot(3,1,1),plot(t,m);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('message');

%figure(1)
subplot(3,1,2),plot(t,c);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('carrier');

%figure(2)
subplot(3,1,3),plot(t,mod);
xlabel('time');
ylabel('amplitude');
legend('x(n)');
title('mod');
