>> ip=wavread('File_location');

>> figure(1),plot(ip);

>> Fs=22050;

>> frame_duration=.1;                              % length of the frame duration=0.1

>> frame_len=frame_duration*Fs;

>> N=length(ip);

>> num_frames=floor(N/frame_len);

>> new_signal=zeros(N,1);

>> count=0;                                                      % initialized the counter

>> for k=1:num_frames

            frame=ip((k-1)*frame_len+1:frame_len*k);

max_val=max(frame);

if(max_val>.05)                                                    % max. amplitude which is removed from Audio file

count=count+1;                                                    % increament in the counter

new_signal((count-1)*frame_len+1:frame_len*count)=frame;

end

end

>> figure(2),plot(new_signal);

>> sound(new_signal);

>> new_signal(110000:end)=[];                  % remove the silent zone from the Audio File

>> figure(3),plot(new_signal);

>> length(ip)

ans =

      166400.

>> length(ip)/22050                                  % find the length of old signal

ans =

    7.5465

>> length(new_signal)/22050                     % find the length of new signal

ans =

    4.9886
