if(exist( 's', 'var'))
    fclose(s);
    delete(s)
    clear s
end

imaqreset % To unload all previous adapters
clear all % To clear all previous variable
close % To close all previous windows
%define Serial Port
%s=serial('COM9', 'BaudRate',9600, 'DataBits',8, 'Terminator','');
%fopen(s)
%disp('Port succefully Opened');
forward='w';
backward='x';
left='a';
right='d';
stop='s';
movement=30;
 image1_r_mean=90;    %RGB of ball
 image1_g_mean=60;
 image1_b_mean=20;
 vid=videoinput('winvideo',1);
triggerconfig(vid,'manual');
 start(vid);
 preview(vid)
  vid.ReturnedColorSpace='rgb';
 while 1>0
     

 image2=getsnapshot(vid);

image2_r=image2(:,:,1);
image2_g=image2(:,:,2);
image2_b=image2(:,:,3);
[r c d]=size(image2);
range=30;
for x=1:r
   for y=1:c      
       if(((image2_r(x,y)<=(image1_r_mean+range))&&(image2_r(x,y)>=(image1_r_mean-range)))&&((image2_g(x,y)<=(image1_g_mean+range))&&(image2_g(x,y)>=(image1_g_mean-range)))&&((image2_b(x,y)<=(image1_b_mean+range))&&(image2_b(x,y)>=(image1_b_mean-range))))
           image3(x,y)=255;
   
       else
            image3(x,y)=0;
       end
  end     %if closed

end  % column for loop closed
figure,imshow(image3);
% row for loop closed
[label numobjects]=bwlabel(image3,8);
graindata=regionprops(label,'basic');
x=find([graindata.Area]==max([graindata.Area])); %for more than one object in arena
p=graindata(x(1)).Area;

if((numobjects>0)&&(graindata(x(1)).Area>=20000))
  fprintf(s,forward);
    disp('Move Forward');
    pause(.8);
 fprintf(s,stop);
     disp('object detected');
else    
    fprintf(s,right);
     disp('Turn Right');
    pause(.4);
 fprintf(s,stop);
     disp('Stop');
end

graindata(x).Area;
fprintf(s, forward);
pause(.2)
 end
 