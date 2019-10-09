clc;
clear all;
close all;
x=input('enter the input sequence: ');
h=input('enter the other sequence: ');
l=length(x);
n=length(h);
r=max(l,n);
hnew=[h,zeros(1,(r-n))];
x1=[x,zeros(1,(r-l))];
h1=zeros(r,r);
h1(1:r,1)=hnew';
h1(1,2:r)=h1(r:-1:2,1);
for i=1:r-1
    for j=1:r-1
        h1(i+1,j+1)=h1(i,j);
        
    end
   
   
end
h1
y=h1*x1';
y'
subplot(4,1,1)
stem(x)
xlabel('time-->');
ylabel('amplitude-->');
title('input sequence');
subplot(4,1,2)
stem(h)
xlabel('time-->');
ylabel('amplitude-->')
title('input sequence');
subplot(4,1,3)
stem((y'))
xlabel('time-->');
ylabel('amplitude-->')
title('circular convolution');
%linear conv using circular conv
m=(l+n-1);
xnew=[x,zeros(1,(m-l))];
hnew1=[h,zeros(1,(m-n))];
h1new=zeros(l+n-1,l+n-1);
h1new(1:(l+n-1),1)=hnew1';
h1new(1,2:m)=h1new(m:-1:2,1);
for i=1:m-1
    for j=1:m-1
        h1new(i+1,j+1)=h1new(i,j);
        
    end
   
   
end
ynew=h1new*xnew';
ynew'
subplot(4,1,4)
stem((ynew'))
xlabel('time-->');
ylabel('amplitude-->')
title('linear convolution');

