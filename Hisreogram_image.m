A=imread('peppers.png');
B=rgb2gray(A); 
C=reshape(B,[],1); 
C=double(C); 
D=hist(C,0:255);
D
imshow(C)