imaqInfo = imaqhwinfo
imaqInfo.InstalledAdaptors
hwInfo = imaqhwinfo('winvideo') %Obtaining Device Information
hwInfo.DeviceInfo
device1 = hwInfo.DeviceInfo(1) %Information on a specific device can be obtained by simply indexing into the device information structure array.
device1.DeviceName
device1.DeviceID
device1.DefaultFormat
device1.SupportedFormats