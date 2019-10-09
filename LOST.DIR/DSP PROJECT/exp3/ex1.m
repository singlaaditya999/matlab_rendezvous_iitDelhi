clc;
clear all;
close all;
x=input('input sequence');
n=length(x);
y=0;
 w=-2*pi:0.1:2*pi; 
    
    for i=1:n
    y=y+(x(i).*exp(-j*w*(i-1)));
    hold on;
    end
    
 figure(2)
stem(x);
subplot(2,1,1),stem(w,abs(y));
    xlabel('X------------------------------>');
    ylabel('Magnitude---------------------->');
    title('----Magitude of  DTFT-----');
    subplot(2,1,2),stem(w,angle(y));
    xlabel('X------------------------------>');
    ylabel('Angle---------------------->');
    title('----Angle of DTFT-----');