clear all
b = 1; %(first image)
npic = 5; %( last image)
for i=b:npic;
str = num2str(i); %(convert number 'i' to string)
name = strcat('','image0',str,'.tif'); %(('','image0',str,'.tif') :''=directory contain file.'image0'=incomplete file name. str = string mean that 1.'.tif'= file format all of this mean that name is image0str.tif=image01.tif)
MAT = imread(name);
figure() %( reserve figure)
imshow(name); %(display image name)
title(i); %( show title in each image with the no.)
end
