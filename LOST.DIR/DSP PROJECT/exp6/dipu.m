clear all;
close all;
clc;
x=randn(1,130);
l=length(x);
L=l+2;
y=zeros(1,L)
y(1)=0.084*x(1);
y(2)=0.084*x(2)+0.168*x(1)+1.028*y(1);

for n=3:L-2
   y(n)=0.084*x(n)+0.168*x(n-1)+0.084*x(n-2)+1.08*y(n-1)-0.365*y(n-2);
   hold on;
   
end
y;
fvtool(x);
fvtool(y);
