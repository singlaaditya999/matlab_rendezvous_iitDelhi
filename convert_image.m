How we Convert a "jpg" file into "pgm" file using MATLAB:-

 A=imread('C:\matlab\ani.jpg'); % file location
imwrite('C:\matlab\test.pgm'); % file location,where pgm file is want to save %

 imshow('C:\matlab\test.pgm'); % show the saved pgm file