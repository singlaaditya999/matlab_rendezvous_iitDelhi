clear all;close all;clc
x=input('Enter the 1st sequence::');
h=input('Enter the 2nd sequence::');
N=input('Enter the data size ::');
Nx=length(x);
M=length(h);
L=N-M+1;
x1=[zeros(1,M-1),x,zeros(1,N-1)];
h=[h zeros(1,N-M)];
k=ceil((Nx+M-1)/L);
y=zeros(1,N);
for n=0:k-1
    xk=x1(n*L+1:n*L+N);
    y=cconv(xk,h,N);
    y1(n*L+1:(n+1)*L)=y(M:N);
end
disp(y1);