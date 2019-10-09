
%MATLAB CODE TO Find Area, Perimeter, Centroid, Equivdiameter, Roundness and Bounding Box without Using MATLAB Function 'regionprops'

%Measure Basic Image Properties without using 'regionprops' function

%Measure Area, Perimeter, Centroid , Equvidiameter, Roundness and Bounding Box



clc

%Read Original Image

I=imread('coins.png');

%Convert to Binary

B=im2bw(I);

%Fill the holes 

C=imfill(B,'holes');

%Label the image

[Label,Total]=bwlabel(C,8);





%Object Number

num=4;

[row, col] = find(Label==num);

%To find Bounding Box

sx=min(col)-0.5;

sy=min(row)-0.5;

breadth=max(col)-min(col)+1;

len=max(row)-min(row)+1;

BBox=[sx sy breadth len];

display(BBox);



%Refer:http://angeljohnsy.blogspot.in/2011/06/how-to-draw-in-matlab.html

figure,imshow(I);

hold on;

x=zeros([1 5]);

MATLAB CODE TO Find Area, Perimeter, Centroid, Equivdiameter, Roundness and Bounding Box without Using MATLAB Function 'regionprops'

%Measure Basic Image Properties without using 'regionprops' function

%Measure Area, Perimeter, Centroid , Equvidiameter, Roundness and Bounding Box



clc

%Read Original Image

I=imread('coins.png');

%Convert to Binary

B=im2bw(I);

%Fill the holes 

C=imfill(B,'holes');

%Label the image

[Label,Total]=bwlabel(C,8);





%Object Number

num=4;

[row, col] = find(Label==num);

%To find Bounding Box

sx=min(col)-0.5;

sy=min(row)-0.5;

breadth=max(col)-min(col)+1;

len=max(row)-min(row)+1;

BBox=[sx sy breadth len];

display(BBox);



%Refer:http://angeljohnsy.blogspot.in/2011/06/how-to-draw-in-matlab.html

figure,imshow(I);

hold on;

x=zeros([1 5]);

MATLAB CODE TO Find Area, Perimeter, Centroid, Equivdiameter, Roundness and Bounding Box without Using MATLAB Function 'regionprops'

%Measure Basic Image Properties without using 'regionprops' function

%Measure Area, Perimeter, Centroid , Equvidiameter, Roundness and Bounding Box



clc

%Read Original Image

I=imread('coins.png');

%Convert to Binary

B=im2bw(I);

%Fill the holes 

C=imfill(B,'holes');

%Label the image

[Label,Total]=bwlabel(C,8);





%Object Number

num=4;

[row, col] = find(Label==num);

%To find Bounding Box

sx=min(col)-0.5;

sy=min(row)-0.5;

breadth=max(col)-min(col)+1;

len=max(row)-min(row)+1;

BBox=[sx sy breadth len];

display(BBox);



%Refer:http://angeljohnsy.blogspot.in/2011/06/how-to-draw-in-matlab.html

figure,imshow(I);

hold on;

x=zeros([1 5]);