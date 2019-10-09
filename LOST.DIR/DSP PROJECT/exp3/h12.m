clc
close all
clear all
%W=-2*pi:0.1:2*pi;
X1=input('Enter the 1st sequence');
N=input('Enter wht point DFT');
Y=fft(X1,N^(8));
Y
X1
axis([-2*pi 2*pi -10 10]);
subplot(3,1,1),stem(X1,'-bo');
title('INPUT');
subplot(3,1,2),plot(abs(Y),'-ro');
title('MAGNITUDE');

subplot(3,1,3),stem(angle(Y),'-go');
title('ANGLE');
