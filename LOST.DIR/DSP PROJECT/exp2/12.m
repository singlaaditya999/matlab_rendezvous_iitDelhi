clc
close all
clear all
xn=input('Enter the input signal');
N=input('wht pont DFT');
x=[xn zeros(1,(N-1))];
w=zeros(N,N);

w=exp((-1i*2*pi)/N);

for k=0:N-1
    for n=0:N-1
     
        w1(k+1,n+1)=w^(k*n);
       
   hold on;

    end
   
end
 
stem(w1*x');