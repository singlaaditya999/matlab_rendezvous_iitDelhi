
How to create image database in MATLAB:-





How to create image database in MATLAB:-

Step-1- Click on "Start".

 Step-2- Select "Image Acquisition Tool-Box".

 Step-3- Select any "Integrated Webcam picture". for ex. YUV2_640*480

 Step-3- In Image Acquisition Parameter set 60 or less and more frames per trigger and color space is "rgb".

 Step-4- Start Preview then start Acquisition.

 Step-5- Click on Export Data and set data Destination is"MATLAb workspace" and give the variable name as u wish (let suppose i give variable name is "image")and click on OK.

 Step-6- Close the Image Acquisition Tool-box.

 Step-7- write the Following Commands on Command Window-

 imshow(image(:,:,:,60));
 imwrite(image,'C:\matlab\image.pgm');
 imwrite(image(:,:,:,1),'C:\matlab\image1.pgm');
 imwrite(image(:,:,:,2),'C:\matlab\image2.pgm');
 imwrite(image(:,:,:,3),'C:\matlab\image3.pgm');
 imwrite(image(:,:,:,4),'C:\matlab\image4.pgm');

 % (till the frames u selected)

 imwrite(image(:,:,:,60),'C:\matlab\image60.pgm');

 % (read the images)

 i = imread('C:\matlab\data base\image1.pgm');
 j = imread('C:\matlab\data base\image2.pgm');
 k = imread('C:\matlab\data base\image3.pgm');
 l = imread('C:\matlab\data base\image4.pgm');
 m = imread('C:\matlab\data base\image5.pgm');
 n = imread('C:\matlab\data base\image6.pgm');
 % (and so on)

 figure(1),imshow(i);
 figure(2),imshow(j);
 figure(3),imshow(k);
 figure(4),imshow(l);
 figure(5),imshow(m);
 figure(6),imshow(n);
