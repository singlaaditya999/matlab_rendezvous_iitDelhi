
%Code for Skin Color Detection Using MATLAB:-

 vid = videoinput('winvideo',1);

 % Set the properties of the video object
 set(vid, 'FramesPerTrigger', Inf);
 set(vid, 'ReturnedColorspace', 'rgb')
 vid.FrameGrabInterval = 15;

 %start the video aquisition here
 start(vid)



 % Set a loop that stop after 100 frames of aquisition

 while(vid.FramesAcquired<=100)

 data = getsnapshot(vid);
 diff_im = imsubtract(data(:,:,1), rgb2gray(data));
 diff_im = medfilt2(diff_im, [3 3]);
 diff_im = imadjust(diff_im);
 level = graythresh(diff_im);
 bw = im2bw(diff_im,level);
 BW5 = imfill(bw,'holes');
 bw6 = bwlabel(BW5, 8);
 stats = regionprops(bw6,['basic']);
 [N,M]=size(stats);
 if (bw==0)
 break;
 else

 tmp = stats(1);
 for i = 2 : N
 if stats(i).Area > tmp.Area
 tmp = stats(i);
 end

 end
 bb = tmp.BoundingBox;
 bc = tmp.Centroid;

 imshow(data)
 hold on
 rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
 hold off
 end
 end

 stop(vid);

 % Flush all the image data stored in the memory buffer.
 flushdata(vid);
