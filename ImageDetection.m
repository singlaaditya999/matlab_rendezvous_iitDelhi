imtool close all;

clear;
fontsize = 20;
A=imread('bsnl-logo.jpg');                                    % first Image
[rows columns numberofcolorbands] = size(A);
subplot(2, 2, 1);
imshow(A, []);
title('Original Grayscale Image', 'FontSize', fontsize);
set(gcf, 'Position', get(0,'Screensize'));
B=imread('bsnl-logo.jpg');                                 % second Image
image2(100:160, 170:230) = 0;
subplot(2, 2, 2);
imshow(B, []);
title('Second Image', 'FontSize', fontsize);
differenceImage = A-B;                                        % difference image
subplot(2, 2, 3);
imshow(differenceImage, []);
title('Difference Image', 'FontSize', fontsize);
thresholdedImage = differenceImage > 4;
sumOfAllPixels = sum(sum(thresholdedImage));
minAllowableDifference = 1000;
if sumOfAllPixels > minAllowableDifference                          % msg display condition
uiwait(msgbox('The images are different.'));

      else
uiwait(msgbox('The images are the same.'));
end