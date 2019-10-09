close all
clear all
clc
wc=input('enter the cut off frequency');
N=input('enter the no of sequence');
x=randn(1,128);
a=((N-1)/2);


for n1=1:N
%     n=n1+a;
    if(n1~=a)
    h(n1)=sin(wc*(n1-a))/(pi*(n1-a));
    else
      h(n1)=wc/pi;
    end
    hold on;
    n1
end
y=conv(x,h);
fvtool(x);
fvtool(h);
fvtool(y);