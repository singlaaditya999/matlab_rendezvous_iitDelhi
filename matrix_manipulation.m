A = magic(3); % creating a magic square and assigning it to the variable A.
A+2; %add 2 to each element of A.
A' ; % take the transpose of A.
B = 2*ones(3); %The symbol * denotes multiplication of matrices. Let's create a new matrix B and multiply A by B.
A*B;
A.*B; %multiply each element of A with its corresponding element of B by using the .* operator.
eig(A); %MATLAB has functions for nearly every type of common matrix calculation. For example, we can find the eigenvalues of A using the "eig" command.
