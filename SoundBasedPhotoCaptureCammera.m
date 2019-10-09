clear all;
vid=videoinput('winvideo',1,'YUY2_640x480')
preview(vid);
recObj = audiorecorder(44100, 16, 2);            % Fs=44100, Bits=16 & Channels=2
get(recObj) 
recObj = audiorecorder;
disp('Start clap.')
%stop(recobj)
i=recObj;
%recordblocking(recObj,1)
%stop(recObj)
camare(i,recObj)
a=getsnapshot(vid);
imshow(a);
delete(vid);
