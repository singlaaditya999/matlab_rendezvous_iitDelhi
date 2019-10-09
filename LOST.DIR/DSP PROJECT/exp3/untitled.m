
clc;
clear all;
close all;
x=input('enter the first sequence');
h=input('enter the second sequence');
n1=length(x);
n2=length(h);
N=n1+n2-1;
h1=[h zeros(1,N-n2)];
x=[x zeros(1,N-n1)];
H=zeros(N,N); 
H(1:N,1)=h1; 
for j=1:N-1
    for i=1:N-1
        H(i+1,j+1)=H(i,j);
    end
    H(1,j+1)=H(N,j); 
end
H
Y=(H*x')';
subplot(3,1,1)
stem(x)
xlabel('n-------->')
ylabel('x value')
title('entered sequence x')
subplot(3,1,2)
stem(h)
xlabel('n-------->')
ylabel('h value')
title('entered sequence h')
subplot(3,1,3)
stem(Y)
xlabel('n-------->')
ylabel('Y value')
title('covolution of Y' )

 