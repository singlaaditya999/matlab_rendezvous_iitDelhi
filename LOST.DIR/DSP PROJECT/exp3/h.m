clc
close all
clear all
%W=-2*pi:2*pi;
X1=input('Enter the 1st sequence');
N=input('Enter wht point DFT');
Y=fft(X1,N^(8));
Y
X1
subplot(3,1,1),stem(X1);
title('INPUT');
subplot(3,1,2),plot(abs(Y));
title('MAGNITUDE');

subplot(3,1,3),plot(angle(Y));
title('ANGLE');
