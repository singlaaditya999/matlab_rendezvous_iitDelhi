% Access an image acquisition device.
vidobj = videoinput('winvideo', 1, 'YUY2_320X240');

% Using the preview window, properly position the camera.
preview(vidobj)
pause(1)

% Capture an image with no moving features.
background = getsnapshot(vidobj);

% Display the background image in a figure window.
imshow(background);
% Set the object into motion.
pause(2);

% Configure the figure to produce flash-free rendering.
set(gcf, 'DoubleBuffer', 'on');

% Configure the acquisition.
vidobj.FramesPerTrigger = 20;

% Start the acquisition.
start(vidobj)

% While logging data, perform a linear combination between
% the current and background images.
current = getdata(vidobj, 1);
transparent = imlincomb(0.5, current, 0.5, background);

% Display the processed image.
imshow(transparent);
% Repeat for all remaining images.
while (vidobj.FramesAvailable > 0),
    % Perform a linear combination between the current and background images.
    current = getdata(vidobj, 1);
    transparent = imlincomb(0.5, current, 0.5, background);

    % Display the processed image.
    imshow(transparent);
end
% Once the video input object is no longer needed, delete
% it and clear it from the workspace.
delete(vidobj)
clear vidobj
clear vidobj