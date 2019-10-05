%This is a graphic representation of a random matrix. 
%The RAND command creates the matrix, and the IMAGESC command plots an image of the matrix, 
%automatically scaling the color map appropriately.

n = 100;
a = rand(n);
imagesc(a);
colormap(hot);
%This is a representation of the inverse of that matrix. 
%While the numbers in the previous matrix were completely random, 
%the elements in this matrix are anything BUT random. In fact,
%each element in this matrix ("b") depends on every one of the ten thousand elements in the previous matrix ("a").


b = inv(a);
imagesc(b);
axis square;


imagesc(a*b);
axis square;