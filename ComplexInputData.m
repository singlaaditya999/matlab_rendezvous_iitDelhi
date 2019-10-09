if (~isempty(daqfind)) %First, find any running data acquisition objects and stop them. 
    stop(daqfind)
end
duration = 10; %Set the duration for Data Acquisition for 60 seconds.
ai = analoginput('winsound') %Create an analog input object and add a channel.
addchannel(ai, 1);
% Start the acquisition.
start(ai)

% Wait for the acquisition to finish.  Wait a few extra seconds to account
% for any overhead in starting the acquisition.
wait(ai, 10);

% Get the data.
[data time] = getdata(ai);

% Plot the data.
plot(time, data)
