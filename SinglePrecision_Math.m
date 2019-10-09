Ad = [1 2 0; 2 5 -1; 4 10 -1]; %Let's first create some data, which is double precision by default.
A = single(Ad); % or A = cast(Ad,'single');convert data to single precision with the single function.

%create single precision zeros and ones with their respective functions.

n=1000;
Z=zeros(n,1,'single');
O=ones(n,1,'single');

whos A Ad O Z n; %Let's look at the variables in the workspace.
B = A'    % Matrix Transpose
whos B
C = A * B % Matrix multiplication
C = A .* B % Elementwise arithmetic
X = inv(A) % Matrix inverse
I = inv(A) * A % Confirm result is identity matrix
I = A \ A  % Better way to do matrix division than inv
E = eig(A) % Eigenvalues
F = fft(A(:,1)) % FFT fast fouriour Transform
S = svd(A) % Singular value decomposition
P = round(poly(A)) % The characteristic polynomial of a matrix
R = roots(P) % Roots of a polynomial
Q = conv(P,P) % Convolve two vectors
R = conv(P,Q)
stem(R); % Plot the result