Fs=44100;
 A=wavread('C:\matlab\ani.wav');
 B=audioplayer(A,Fs);
 play(B);
 plot(A);
 yfirst=A(1:30000); % break the Speech
 ysecond=A(30001:60000);
 signal = (yfirst + ysecond);
 sound(signal);
 plot(signal);