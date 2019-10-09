if (~isempty(daqfind)) %First, find any running data acquisition objects and stop them
    stop(daqfind)
end
ai = analoginput('winsound'); %To get started, an analog input object, ai, is created for the winsound device.
ai
addchannel(ai, 1) %You can add a channel to an analog input object with the ADDCHANNEL command.
ch1 = ai.Channel;   %all the analog input object's channels will be assigned to the variable ch1.
ch1 = get(ai, 'Channel'); %Or, using the GET notation
ch1
addchannel(ai, 2, 'Chan2') %In the second method, the channel is accessed at creation time by assigning an output variable to ADDCHANNEL.
ch2 = ai.Chan2; %In the third method, the channel is accessed through its ChannelName property value. 
ch2
ch = [ch1 ch2]; %Channels that have the same parent 
s = size(ch);
s
get(ch1, 'Units')
set(ch1, 'SensorRange', [-2 2]);
ch
