t=linspace(-10,10,1000);
xt=exp(-t./10).*sin(5*t);
yt=exp(-t./10).*cos(5*t);
figure
p=plot3(xt,yt,t);