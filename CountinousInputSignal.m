if (~isempty(daqfind)) %First, find any running data acquisition objects and stop them. 
    stop(daqfind)
end
duration = 10; %Set the duration for Data Acquisition for 60 seconds.
ai = analoginput('winsound') %Create an analog input object and add a channel.
addchannel(ai, 1);
sampleRate = get(ai, 'SampleRate')
get(ai, 'SamplesPerTrigger')
requiredSamples = floor(sampleRate * duration);
set(ai, 'SamplesPerTrigger', requiredSamples); %To acquire 10 seconds of data, configure SamplesPerTrigger property as the product of the duration and the SampleRate property
waitTime = duration * 1.1 + 0.5
start(ai)
tic
wait(ai, waitTime);
toc
[data, time] = getdata(ai); %The Elapsed Time shown is much smaller than the actual waitTime, indicating that the wait function
figure;
plot(time,data);
xlabel('Time (s)');  % Setting up the xlabel
ylabel('Signal (Volts)'); % Setting up the ylabel
title('Data Acquired using Microphone for 10 seconds'); % Setting up the title
grid on;
delete(ai);
clear ai;