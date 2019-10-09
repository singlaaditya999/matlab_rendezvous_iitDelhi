if (~isempty(daqfind)) %First, find any running data acquisition objects and stop them.
    stop(daqfind)
end
ai = analoginput('winsound');
addchannel(ai,1);
set(ai,'SamplesPerTrigger',Inf);
daqmem(ai)
set(ai,'TimerPeriod',0.5);

%Set up the Plot for FFT of live input and start the analog input.

figure;  % Setting up the plot
P = plot(zeros(1000,1));  % Initially blank plot
T = title(['Discrete Fourier Transform Plot (fft),Number of callback function calls: ', num2str(0)]);
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
grid on;
set(ai,'TimerFcn',{@demoai_continuous_timer_callback,P,T});
start(ai);
while(strcmpi(get(ai,'Running'),'On')) % To keep the code running till the callback issues a stop
   pause(0.5);
end

allData = get(ai,'UserData');
figure;
plot(allData.time,allData.data);
xlabel('Time (s)')
ylabel('Signal (Volts)')
title('Total Data captured');
grid on;