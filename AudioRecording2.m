recObj = audiorecorder(44100, 16, 2);            % Fs=44100, Bits=16 & Channels=2
get(recObj) 
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj,30);  % 5=recording time(u vary it)
disp('End of Recording.');
play(recObj);  % play the recording
myRecording = getaudiodata(recObj);
plot(myRecording);      % Graph ploting of your Recording             