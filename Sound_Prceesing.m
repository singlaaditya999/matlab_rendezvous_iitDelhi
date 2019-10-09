load chirp;
A=audioplayer(y,Fs);
play(A); %sound(y,Fs); wavplay(y,Fs);

%Change the amplitude of Audio File:-
wavplay(2*y,Fs);             % amplitude=2*Original amplitude

%Change the playback Speed of Audio File:-
wavplay(y,Fs*.1);               % Playback speed is increased by factor 0.1