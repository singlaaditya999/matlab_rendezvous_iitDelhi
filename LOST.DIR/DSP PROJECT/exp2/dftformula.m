clc
close all
clear all
a=input('Enter the input signal');
N=input('Wht point DFT');
l=length(a);
xn=[a zeros(1,(N-l))];
for k=0:N-1
    for n=0:N-1
       x(k+1,n+1)=exp(-i*2*pi*n*k/N);
       
    end
   hold on;
   x
end
y=xn*x;
y
subplot(2,2,1),stem(a);
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