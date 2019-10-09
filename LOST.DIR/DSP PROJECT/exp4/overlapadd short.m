clc, close all, clear all;
x=input('Enter the input sequence:');
h=input('Enter the impulse response:');
a=conv(x,h);
N=input('Enter the length,N:');
n1=length(x);
n2=length(h);
L=N-n2+1;
h=[h zeros(1,N-n2)];
k=ceil(n1/L);
x=[x, zeros(1,L-1)];
y=zeros(k,N);
for i=0:k-1
    x1=[x(i*L+1:(i+1)*L),zeros(1,n2-1)];
    y(i+1,:)=cconv(x1,h,N);
end
y1(1:L)=y(1,1:L);
y1(n1+1:n1+n2-1)=y(k,L+1:N);
for i=1:k-1
    y1(i*L+1:i*L+n2-1)=y(i,L+1:N)+y(i+1,1:n2-1);
    y1(i*L+n2:(i+1)*L)=y(i+1,n2:L);
end
disp(y1);