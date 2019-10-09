
if(exist( 's', 'var'))
    fclose(s)
    delete(s)
    clear s
end

imaqreset % To unload all previous adapters
clear all % To clear all previous variable
close % To close all previous windows


%define Serial Port
s=serial('COM19', 'BaudRate',9600, 'DataBits',8, 'Terminator','');
fopen(s)

disp('Port succefully Opened');

forward='w';
backward='x';
left='a';
right='d';
stop='s';
movement=30;




image1_r_mean=255; % Hue component of Ball's color
image1_g_mean=205; % Saturation component of Ball's color
image1_b_mean=232; % Value component of Ball's color


vid=videoinput('winvideo',1,'YUY2_640x480'); % Arguments May change
set(vid,'ReturnedColorSpace','rgb'); %Arguments May Change
triggerconfig(vid, 'manual');
preview(vid);
 start(vid);
 
 Xx=[0 0 0 0];
 Yy=[0 0 0 0];
 while 1>0

   

image2=getsnapshot(vid);
%image2=rgb2hsv(image2rgb);

image2_r=image2(:,:,1);
image2_g=image2(:,:,2);
image2_b=image2(:,:,3);

[r c d]=size(image2);
range=30;

for x=1:r
    for y=1:c
        if (((image2_r(x,y)<=(image1_r_mean+range))&&(image2_r(x,y)>=(image1_r_mean-range)))&&((image2_g(x,y)<=(image1_g_mean+range))&&(image2_g(x,y)>=(image1_g_mean-range)))&&((image2_b(x,y)<=(image1_b_mean+range))&&(image2_b(x,y)>=(image1_b_mean-range))))
            image3(x,y)=255;
        else
            image3(x,y)=0;
        end
    end
end

imshow(image3);
[label,numobjects]=bwlabel(image3,8);
graindata=regionprops(label,'basic');
x=find([graindata.Area]== max([graindata.Area])); % for more than one object in arena
leng=length(x);
%Q(i-1)=Q(i);
%Q(i)=graindata(x(1)).Centroid;
if length(x)>0
    
    for i=3:-1:1
        Xx(i+1)=Xx(i);
        Yy(i+1)=Yy(i);
    end
if length(x)==1
    Xx(1)=graindata(x).Centroid(1); % Here 1 = x for more than one object
    Yy(1)=graindata(x).Centroid(2); % Here 1 = x for more than one object
else
    Xx(1)=graindata(x(1)).Centroid(1); % Here 1 = x for more than one object
    Yy(1)=graindata(x(1)).Centroid(2); % Here 1 = x for more than one object 
end
end


%Xx
%Yy
dx1=Xx(1)-Xx(2);
dx2=Xx(2)-Xx(3);
dx3=Xx(3)-Xx(4);

dy1=Yy(1)-Yy(2);
dy2=Yy(2)-Yy(3);
dy3=Yy(3)-Yy(4);
if(dx1<-movement&&dx2<-movement&&dx3<-movement)
    fprintf(s,backward);
    disp('Left');
else if(dx1>movement&&dx2>movement&&dx3>movement)
    fprintf(s,right);
     disp('Right');
else if(dy1<-movement&&dy2<-movement&&dy3<-movement)
    fprintf(s,forward);
    disp('Forward');
else if(dy1>movement&&dy2>movement&&dy3>movement)
    fprintf(s,left);
     disp('Backward');
    else if (abs(dx1)<movement)&& (abs(dx2)<movement)&&(abs(dx3)<movement) &&(abs(dy1)<movement)&&(abs(dy2)<movement) &&(abs(dy3)<movement)
        fprintf(s,stop);
     disp('Stop');
        end
    end
    end
    end
end




graindata(x).Area;
%fprintf(s, forward);
pause(.2)
end


  