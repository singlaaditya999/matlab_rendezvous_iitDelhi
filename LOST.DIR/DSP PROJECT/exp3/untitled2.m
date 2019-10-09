clc;
clear all;
close all;
X=input('enter 1st sequence:');
h=input('enter 2nd sequence:');
N=input('enter block length:');
l=length(X);
M=length(h);
L=N-M+1;
p=X;
r=rem(1,L);
X=[zeros(1,M-1),X,zeros(1,L-r)];
h=[h,zeros(1,N-M)];
k=floor(l+M-1)/L;
for i=0:k
    xi=X(i*L+1:1i*L+N);
    [y(i+1,1:L)]=cconv(xi,h,N);
    disp(y);
    y(i+1,1:L)=y(i+1,M:N);
end;
for i=0:k
    y1(1,L*i+1:L*i+L)=y(i+1,1:L);
    disp(y1)
end;
subplot(4,1,1)
stem(X);
xlabel('---->n')
ylabel('amp')
subplot(4,1,2)
stem(h);
xlabel('---->n')
ylabel('amp')
subplot(4,1,3)
stem(y1);
xlabel('---->n')
ylabel('amp')
title('overlap save method');