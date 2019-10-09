>> A=im2single(imread('C:\matlab\ani.jpg'));       % read the first Image

>> B=im2single(imread('C:\matlab\re.jpg'));         % read the second Image

>> halphablend=vision.AlphaBlender;                       % call the function

>> C=step(halphablend,A,B);                                     % store the blend image in 'C'

>> figure(1),imshow(A);                                             % show first Image

>> figure(2),imshow(B);                                             % show second Image

>>figure(3),imshow(C);                                              % show the resulted  Blend Image

 
