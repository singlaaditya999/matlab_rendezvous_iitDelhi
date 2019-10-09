r = audiorecorder(44100, 16, 1);     %44100=sampling frequency, 16=data rate, 1=channel

record(r,5);% speak into microphone or at the front of the Laptop
pause(r);

play(r);          % listen

resume(r);       % speak again

stop(r);

p = play(r);     % listen to complete recording
