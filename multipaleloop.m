% leeza=folder name
 % .jpg=image format
 % I= RGB color images
 % J=GRAYSCALE Images

 leeza = dir('C:\leeza\*.jpg');
 for i = 1: length(leeza)
 filename=strcat('C:\leeza\',leeza(i).name);
 I = imread(filename);
 figure,imshow(I);
 J = rgb2gray(I);
 figure,imshow(J);
 end
