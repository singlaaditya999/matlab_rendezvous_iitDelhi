clear all

b = 16;
npic = 60;
mov = avifile('MakeVi01.avi') %MakeVi01.avi name of avi-file save to your comp.
for i=b:npic;
 str = num2str(i);
 name = strcat('ImageSe/','SPT200',str,'.tif'); % ex. image1.tiff : (file name= 'SPT200')
 MAT = imread(name); 
 imshow(MAT);
 axis off;
 title(i);

 F(i) = getframe(gca);
 mov = addframe(mov,F(i));
end
 mov = close(mov)

