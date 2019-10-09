i=imread('C:\Users\Ashish Kumar\Desktop\mm.png');
j=imread('C:\Users\Ashish Kumar\Desktop\mm.png');
k=imread('C:\Users\Ashish Kumar\Desktop\mm.png');
l=imread('C:\Users\Ashish Kumar\Desktop\mm.png');
vid=videoinput('winvideo',1,'YUY2_640x480');
start(vid);
preview(vid);
range=35;
while 1
    t_r=vid(:,:,1);
    t_b=vid(:,:,3);
    t_g=vid(:,:,2);
    for x=1:480
        for y=1:640
if (t_r(x,y)==253+range||t_r(x,y)==253-range)&&(t_g(x,y)==255+range||t_g(x,y)==255-range)&&(t_b(x,y)==255+range||t_b(x,y)==255-range)
    imshow(i);
end
if (t_r(x,y)==100+range||t_r(x,y)==100-range)&&(t_g(x,y)==153+range||t_g(x,y)==153-range)&&(t_b(x,y)==254+range||t_b(x,y)==254-range)
     imshow(j);
end
if (t_r(x,y)==100+range||t_r(x,y)==253-range)&&(t_g(x,y)==255+range||t_g(x,y)==255-range)&&(t_b(x,y)==255+range||t_b(x,y)==255-range)
     imshow(k);
end
if (t_r(x,y)==253+range||t_r(x,y)==253-range)&&(t_g(x,y)==255+range||t_g(x,y)==255-range)&&(t_b(x,y)==255+range||t_b(x,y)==255-range)
    imshow(l);
end
        end
    end
end
