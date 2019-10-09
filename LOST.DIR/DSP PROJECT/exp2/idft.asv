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
xn=[zeros(1,N)];
for n=0:N-1
    for k=0:N-1
         x=exp(i*2*pi*n*k/N);
      xn(n+1)=xn(n+1)+(y(k+1).*(x/N));
    end
  
end
xn
subplot(3,2,1),stem(a);
xlabel('time');
ylabel('amp');
legend('INPUT');
subplot(3,2,2),stem(y);
xlabel('time');
ylabel('amp');
legend('DFT OUTPUT');
subplot(3,2,3),stem(abs(y));
xlabel('time');
ylabel('amp');
legend('mod of DFT');
subplot(3,2,4),stem(angle(y));
xlabel('time');
ylabel('angle');
legend('angle of DFT');
subplot(3,2,5),stem(abs(xn));
xlabel('time');
ylabel('angle');
legend('mod of IDFT');
subplot(3,2,6),stem(angle(xn));
xlabel('time');
ylabel('angle');
legend('angle of IDFT');