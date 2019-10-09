t=0:pi/20:10*pi;
xt1=sin(t);
yt1=cos(t);
xt2=sin(2*t);
yt2=cos(2*t);
figure
plot3(xt1,yt1,t,xt2,yt2,t,'--')