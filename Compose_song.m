Compose a Song of specific characteristics with its Ploting and Saving:-

>>duration = 10; % duration in seconds
 >> amplitude = 0.8; % amplitude
 >>f1 = 500; % frequency in Hertz
 >>f2 = 1000;
 >>f3 = 1500;
 >>phi = 2*pi*0.5; % phase offset, e.g.: 2*pi*0.25 = 1/4 cycle
 >>fs = 44100; % sampling rate
 >>T = 1/fs;  % sampling period
 >>t = 0:T:duration; % time vector
 >> omega1 = 2*pi*f1; % angular frequency in radians
 >>omega2 = 2*pi*f2;
 >>omega3 = 2*pi*f3;
 >>partial1 = cos(omega1*t + phi)*amplitude; % sinusoidal partial 1
 >>partial2 = cos(omega2*t + phi)*amplitude; % sinusoidal partial 2
 >>partial3 = cos(omega3*t + phi)*amplitude; % sinusoidal partial 3
 >>signal = (partial1 + partial2 + partial3)/3;
 >> plot(t, signal);
 >> xlabel('Time (seconds)');
 >> ylabel('Amplitude');
 >>title('Complex Signal');
 >>sound(signal, fs); %% play the signal
