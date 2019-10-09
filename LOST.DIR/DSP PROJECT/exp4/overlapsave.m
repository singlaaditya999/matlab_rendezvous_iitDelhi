clc
close all
clear all;
x=input('x(n)==>');
l1=length(x);
h=input('h(n)==>');
l2=length(h);
N=l2+l2-1;
M=l1+l2-1;
N1=l2-1;
H=[h,zeros(1,(N-N1))];
i=0;
X=[zeros(1,(M-l1)),x,zeros(1,(M-l1))];
L=length(X);
% L
% X
for a=1:l2:L-2
    i=i+1;
    for j=1:N
        X1(i,j)=X(a);
        hold on;
%         X1 
         a=a+1;
         X2=X1(i,j)
    end
    X1'
    
    X2
 %Y1(i,j)=cconv(X2,H);
       
end

