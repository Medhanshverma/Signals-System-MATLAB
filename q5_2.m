% Define the analog signal x(t) = cos(2*pi*800*t)
fs = 2000; % Sampling frequency
t = 0:1/fs:0.01; % Time vector from 0 to 0.01 seconds
x = cos(2*pi*800*t); % Analog signal x(t)

% Design the FIR lowpass filter
fpass = 400; % Passband frequency in Hz
fstop = 420; % Stopband frequency in Hz
Apass = 1; % Passband gain
Astop = 60; % Stopband attenuation

d = designfilt('lowpassfir', 'PassbandFrequency', fpass, 'StopbandFrequency', fstop, 'PassbandRipple', Apass, 'StopbandAttenuation', Astop, 'SampleRate', fs);

% Filter the input signal x(t)
y = filter(d, x);

% Compute the frequency spectrum of x(t) and y(t)
X = fftshift(fft(x));
Y = fftshift(fft(y));

% Frequency axis
f = linspace(-fs/2, fs/2, length(t));

% Plot the spectral magnitude of x(t) and y(t)
figure;
subplot(2,1,1);
plot(f, abs(X));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Spectral Magnitude of x(t)');
subplot(2,1,2);
plot(f, abs(Y));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Spectral Magnitude of y(t)');

% Compute the time-domain peak amplitude of y(t)
peak_amplitude = max(abs(y));
disp(['Time-domain peak amplitude of y(t): ', num2str(peak_amplitude)]);