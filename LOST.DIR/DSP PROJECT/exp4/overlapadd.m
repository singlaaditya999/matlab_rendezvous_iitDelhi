clc, close all, clear all;
x=input('Enter the input sequence:');
h=input('Enter the impulse response:');
a=conv(x,h);
N=input('Enter the length,N:');
x1=zeros(1,10);
n1=length(x);
n2=length(h);
L=N-n2+1;
h=[h zeros(1,N-n2)];
d=n1/L;
for j=0:d-1
    k=1:L;
      x1(k) = x(k+j*L);
    x1=[x1 zeros(1,N-L)];
    r=1:j*L+1;
      z(j+1,r)=0;
    y=cconv(x1,h,N);
    t=1:N;
      z(j+1,t+j*L)=y(t);
    end
for j=1:length(z)
    b(j)=0;
    for k=1:d
        b(j)=b(j)+z(k,j);
    end
end
disp(a);
disp(b);
subplot(3,1,1),stem(x);
xlabel('n-->');
ylabel('x-->');
title('Input Sequence');
subplot(3,1,2);stem(h);
xlabel('n-->');
ylabel('x-->');
title('Impulse Sequence');
subplot(3,1,3),stem(b);
xlabel('n-->');
ylabel('x-->');
title('Linear convoluted Sequence');