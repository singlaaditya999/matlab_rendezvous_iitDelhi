clc
close all
clear all
x1=input('Enter the 1st sequence');
x2=input('Enter the 2st sequence');
%N=input('Enter wht point DFT');
l1=length(x1);
l2=length(x2);
M=max(l1,l2);
X1=[x1 zeros(1,(M-l1))];
X2=[x2 zeros(1,(M-l2))];
y1=fft(X1);
y2=fft(X2);
y1
y2
a=y1.*y2;
y=ifft(a);
y
C=cconv(x1,x2,M);
C
subplot(2,2,1),stem(x1);
title('X1');
subplot(2,2,2),stem(x2);
title('X2');
subplot(2,2,3),stem(y);
title('DTF&IDFT');
subplot(2,2,4),stem(C);
title('CIRCULAR CONVOLUTION');