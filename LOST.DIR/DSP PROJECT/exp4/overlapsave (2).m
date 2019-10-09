clear all;close all;clc
x=input('Enter the  1st sequence::');
h=input('Enter the 2nd sequence::');
N=input('Enter the data size ::');
Nx=length(x);
M=length(h);
M1=M-1;
L=N-M1;
x=[zeros(1,M-1),x,zeros(1,N-1)];
h=[h zeros(1,N-M)];
k=floor((Nx+M1-1)/(L));
y=zeros(k+1,N);
for n=0:k
    xk=x(n*L+1:n*L+N);
    y(n+1,:)=cconv(xk,h,N);
end
 y
y1=(y(:,M:N))';
y=(y1(:))';
disp(y);
% e=conv(x,h);
% figure(1);
subplot(3,1,1)
stem(x);
title('<<-----1st sequence x(n)----->>')
subplot(3,1,2)
stem(h);
title('<<----2nd sequence h(n)------>>')
subplot(3,1,3)
stem(y);
title('<<-----convolution using overlap save method----->>')

% subplot(4,1,4)
% stem(e);
% title('<<-----linear----->>')
% % figure(2)
% % stem(y);
