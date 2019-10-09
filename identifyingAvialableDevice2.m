imaqInfo = imaqhwinfo
imaqInfo.InstalledAdaptors
hwInfo = imaqhwinfo('winvideo') %Obtaining Device Information
hwInfo.DeviceInfo
device1 = hwInfo.DeviceInfo(1) %Information on a specific device can be obtained by simply indexing into the device information structure array.
device1.DeviceName
device1.DeviceID
device1.DefaultFormat
device1.SupportedFormats
vidobj = videoinput('winvideo', 1,'YUY2_160x120')
% Access the device's video sources that can be used for acquisition.
sources = vidobj.Source
whos sources
selectedsrc = getselectedsource(vidobj)
% List the video source object's properties and their current values.
get(selectedsrc)
% Once the video input object is no longer needed, delete
% it and clear it from the workspace.
start(vidobj)
preview(vidobj)
framesPerTriggerValue = get(vidobj, 'FramesPerTrigger')
brightnessValue = get(selectedsrc, 'Brightness')
%delete(vidobj)
%clear vidobj
set(vidobj, 'LoggingMode') %Configuring Properties
imaqhelp(vidobj, 'LoggingMode') % propinfo(vidobj, 'LoggingMode')
objects = imaqfind %To find image acquisition objects in memory, use the IMAQFIND function. IMAQFIND returns an array of video input objects.
% Delete the first object in the array.
%delete(objects(2))
%objects = imaqfind Find all remaining valid objects.
% Display the current workspace.
whos