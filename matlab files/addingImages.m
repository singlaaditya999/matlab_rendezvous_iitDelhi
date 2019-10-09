I=imread('Screenshot (3).png');
J=imread('Screenshot (2).png');
K=imadd(I,J);
figure;
imshow(K);

RGB=imread('Screenshot (1).png');
RGB2=imadd(RGB,25);
figure;
subplot(1,2,1);imshow(RGB);
subplot(1,2,2);imshow(RGB2);
