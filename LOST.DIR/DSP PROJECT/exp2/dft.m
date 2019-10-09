clc
close all
clear all
xn=input('Enter the input signal');
N=input('wht pont DFT');
l=length(xn);

x=[xn zeros(1,(N-l))];
w=zeros(N,N);

w=exp((-1i*2*pi)/N);

for k=0:N-1
    for n=0:N-1
     
        w1(k+1,n+1)=w^(k*n);
       
   hold on;

    end
   
end
w1
y=w1*x';
subplot(2,2,1),stem(x);
xlabel('time');
ylabel('amp');
legend('INPUT');
subplot(2,2,2),stem(y);
xlabel('time');
ylabel('amp');
legend('DFT OUTPUT');
subplot(2,2,3),stem(abs(y));
xlabel('time');
ylabel('amp');
legend('mod');
subplot(2,2,4),stem(angle(y));
xlabel('time');
ylabel('angle');
legend('angle');