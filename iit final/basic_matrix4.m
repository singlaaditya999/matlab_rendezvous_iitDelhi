A = [1 2 0; 2 5 -1; 4 10 -1]; %Creating a matrix is as easy as making a vector, using semicolons (;) to separate the rows of a matrix.
B = A' %find the transpose of the matrix A.
C = A * B ; %Now let's multiply these two matrices together.
C = A .* B; %Instead of doing a matrix multiply, we can multiply the corresponding elements of two matrices or vectors using the .* operator.
X = inv(A); %Let's find the inverse of a matrix ..
I = inv(A) * A; %and then illustrate the fact that a matrix times its inverse is the identity matrix
eig(A); %MATLAB has functions for nearly every type of common matrix calculation. There are functions to obtain eigenvalues ...
svd(A); %as well as the singular value decomposition.
p = round(poly(A)); %The "poly" function generates a vector containing the coefficients of the characteristic polynomial. The characteristic polynomial of a matrix A is det(\lambda I - A)
roots(p); % We can easily find the roots of a polynomial using the roots function.These are actually the eigenvalues of the original matrix.
q = conv(p,p); %MATLAB has many applications beyond just matrix computation. To convolve two vectors ...
r = conv(p,q); % or convolve again 
plot(r); % and plot the result.
whos; % At any time, we can get a listing of the variables we have stored in memory using the who or whos command.
A; %You can get the value of a particular variable by typing its name.
sqrt(-1); %