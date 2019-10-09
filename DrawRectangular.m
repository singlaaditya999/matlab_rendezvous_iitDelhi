%To draw a rectangle: 
%The function ‘getrect’ returns the [xmin ymin width height]. 
%We need 4 points to draw a rectangle. 
%The first point is (x,y) , here it is (xmin,ymin). 
%The second point is(x+width,y) 
%Third point is (x+width, y+height) 
%Fourth point is (x,y+height) 
%Since I am using the plot function I need to connect the 1st and the fourth point. 
%So I need a fifth point i.e (x,y) which completes the rectangle. 


scz=get(0,'ScreenSize');
fig=figure('Position',[round(scz(1,3)/4) round(scz(1,4)/8) 700 500],'MenuBar','None','NumberTitle','off','Name','Draw Lines','Resize','off'); 
[x, y] = getline(fig); 
x=zeros([1 5]); 
y=zeros([1 5]); 
r=getrect(fig); 
x(:)=r(1); 
y(:)=r(2); 
x(2:3)=r(1)+r(3); 
y(3:4)=r(2)+r(4); 
plot(x,y); 
axis([0 1 0 1]); 