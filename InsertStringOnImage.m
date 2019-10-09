>> H=vision.TextInserter('ANIRUDH');          % get the string

>> H.Color=1;       % set the color of string

>> H.FontSize=30;       % set font size

>> H.Location=[50 10];                                     % set location of string

>> A=im2double(rgb2gray(imread('C:\matlab\ani.jpg')));       % read the image and convert in gray scale

>> Ani=step(H,A);  % insert the string

>> imshow(Ani);                                            % show the image with string

 
