symbol = {'1','2','3','4','5','6','7','8','9','*','0','#'};
lfg = [697 770 852 941]; % Low frequency group
hfg = [1209 1336 1477];  % High frequency group
f  = [];
for c=1:4,
    for r=1:3,
        f = [ f [lfg(c);hfg(r)] ];
    end
end
f'
Fs  = 8000;       % Sampling frequency 8 kHz
N = 800;          % Tones of 100 ms
t   = (0:N-1)/Fs; % 800 samples at Fs
pit = 2*pi*t;

tones = zeros(N,size(f,2));
for toneChoice=1:12,
    % Generate tone
    tones(:,toneChoice) = sum(sin(f(:,toneChoice)*pit))';
    % Plot tone
    subplot(4,3,toneChoice),plot(t*1e3,tones(:,toneChoice));
    title(['Symbol "', symbol{toneChoice},'": [',num2str(f(1,toneChoice)),',',num2str(f(2,toneChoice)),']'])
    set(gca, 'Xlim', [0 25]);
    ylabel('Amplitude');
    if toneChoice>9, xlabel('Time (ms)'); end
end
set(gcf, 'Color', [1 1 1], 'Position', [1 1 1280 1024])
annotation(gcf,'textbox', 'Position',[0.38 0.96 0.45 0.026],...
    'EdgeColor',[1 1 1],...
    'String', '\bf Time response of each tone of the telephone pad', ...
    'FitBoxToText','on');
for i=[5 11 8 6 4 7 7 11 11 11],
    p = audioplayer(tones(:,i),Fs);
    play(p)
    pause(0.5)
end
Nt = 205;
original_f = [lfg(:);hfg(:)]  % Original frequencies
k = round(original_f/Fs*Nt);  % Indices of the DFT
estim_f = round(k*Fs/Nt)      % Frequencies at which the DFT is estimated
tones = tones(1:205,:);
figure,
for toneChoice=1:12,
    % Select tone
    tone=tones(:,toneChoice);
    % Estimate DFT using Goertzel
    ydft(:,toneChoice) = goertzel(tone,k+1); % Goertzel use 1-based indexing
    % Plot magnitude of the DFT
    subplot(4,3,toneChoice),stem(estim_f,abs(ydft(:,toneChoice)));
    title(['Symbol "', symbol{toneChoice},'": [',num2str(f(1,toneChoice)),',',num2str(f(2,toneChoice)),']'])
    set(gca, 'XTick', estim_f, 'XTickLabel', estim_f, 'Xlim', [650 1550]);
    ylabel('DFT Magnitude');
    if toneChoice>9, xlabel('Frequency (Hz)'); end
end
set(gcf, 'Color', [1 1 1], 'Position', [1 1 1280 1024])
annotation(gcf,'textbox', 'Position',[0.28 0.96 0.45 0.026],...
    'EdgeColor',[1 1 1],...
    'String', '\bf Estimation of the frequencies contained in each tone of the telephone pad using Goertzel', ...
    'FitBoxToText','on');