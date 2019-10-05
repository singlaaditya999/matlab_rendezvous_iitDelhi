I = imread('cameraman.tif');
imshow(I);
text(size(I,2),size(I,1)+15, ...
    'Image courtesy of Massachusetts Institute of Technology', ...
    'FontSize',7,'HorizontalAlignment','right');
scale = 5;
J = imresize(I,scale); % Try varying the scale factor.
theta = 30;
K = imrotate(J,theta); % Try varying the angle, theta.
figure, imshow(K)
input_points = [129.87  141.25; 112.63 67.75];
base_points = [135.26  200.15; 170.30 79.30];
t = cp2tform(input_points,base_points,'nonreflective similarity');
ss = t.tdata.Tinv(2,1);
sc = t.tdata.Tinv(1,1);
scale_recovered = sqrt(ss*ss + sc*sc)
theta_recovered = atan2(ss,sc)*180/pi
D = size(I);
recovered = imtransform(K,t,'XData',[1 D(2)],'YData',[1 D(1)]);

% Compare recovered to I.
figure, imshow(I)
title('I')
figure, imshow(recovered)
title('recovered')