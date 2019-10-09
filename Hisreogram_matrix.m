%Consider a 2d matrix:
B=[0 1 2 4 4 5; 0 0 2 2 4 5; 1 1 2 0 5 5; 4 4 2 0 1 5;];
%I used reshape function to convert the 2d matrix to 1 dimensional matrix.
C=reshape(B,[],1); %If you use C=reshape(B,1,[]), the size of the matrix will be 1 x 24 
C;
C=double(C); 
D=hist(C,0:5) 
B