A = imread('bsnl-logo.jpg');
B = imshow(A);
C = imellipse(gca,[55 10 120 120]);
D = createMask(C,B);