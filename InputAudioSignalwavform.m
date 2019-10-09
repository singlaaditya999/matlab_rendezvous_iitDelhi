if (~isempty(daqfind)) %First, find any running data acquisition objects and stop them
       stop(daqfind)
end
ai = analoginput('winsound'); %Now let's create an analog input object and add a single channel to it.
addchannel(ai, 1);
ai.SampleRate = 8000; %Now, let's set up the analog input object so that we acquire 5 seconds of data at 8000 Hz as soon as the object is started.
ai.SamplesPerTrigger = 40000;
ai.TriggerType = 'Immediate';
start(ai) %let's start it and then get the data that it collects
[d,t] = getdata(ai);
plot(t,d); %Now that you're done collecting data, plot it.
ai.TriggerRepeat = inf;
start(ai);
pause(0.3);
pd1 = peekdata(ai,8000);
pause(0.3);
pd2 = peekdata(ai,8000);
pause(0.3);
pd3 = peekdata(ai,8000);
whos pd1 pd2 pd3
stop(ai);
delete(ai);
