imtool close all;
 clear;
 workspace;
 fontsize = 20;
 folder = 'C:\MATLAB701\toolbox\images\imdemos';
 basefilename = 'board.tif';
 fullfilename = fullfile(folder,basefilename);
 grayImage = imread(fullfilename);
 [rows columns numberofcolorbands] = size(grayImage);
  subplot(2, 2, 1);
  imshow(grayImage, []);
  imshow(grayImage, []);
  title('Original Grayscale Image', 'FontSize', fontsize);
  set(gcf, 'Position', get(0,'Screensize'));
  image2 = grayImage;
  image2(100:160, 170:230) = 0;
  subplot(2, 2, 2);
  imshow(image2, []);
  title('Second Image', 'FontSize', fontsize);
  differenceImage = grayImage - image2;
    subplot(2, 2, 3);
  imshow(differenceImage, []);
  title('Difference Image', 'FontSize', 'fontSize');
 % Undefined function or variable 'fontSize'.

  title('Difference Image', 'FontSize', fontsize);
  thresholdedImage = differenceImage > 4;
  sumOfAllPixels = sum(sum(thresholdedImage));
  minAllowableDifference = 1000;
  if sumOfAllPixels > minAllowableDifference
 uiwait(msgbox('The images are different.'));
 else
 uiwait(msgbox('The images are the same.'));
 end
  

 %This is code for comparing two images




