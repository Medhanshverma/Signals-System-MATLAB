clc
clear all;

% Parameters
fs1 = 20000; % Original sample rate in Hz
fs2 = 40000; % Actual sample rate in Hz
cutoff = 5000; % Cutoff frequency in Hz
filterOrder = 100; % Order of the FIR filter

% Calculate normalized cutoff frequency for fs1
normCutoff1 = cutoff / fs1;

% Design filter coefficients at fs1 (20 kHz)
n = -(filterOrder-1)/2:(filterOrder-1)/2; % Filter taps
h = sinc(2 * normCutoff1 * n); % Ideal lowpass filter
h = h .* (0.54 - 0.46 * cos(2 * pi * n / (filterOrder-1))); % Apply Hamming window
h = h / sum(h); % Normalize to unity gain

% Calculate frequency response manually
N = 1024; % Number of frequency points for FFT
f1 = linspace(0, fs1/2, N/2+1); % Frequency axis for fs1
f2 = linspace(0, fs2/2, N/2+1); % Frequency axis for fs2

% Frequency response calculation
H1 = abs(fft(h, N)); % Frequency response at fs1
H2 = abs(fft(h, N * 2)); % Frequency response at fs2 (scaled by 2 due to higher fs)

% Plotting
figure;
subplot(2,1,1);
plot(f1, 20*log10(H1(1:N/2+1)));
title('Magnitude Response of the Filter (fs = 20 kHz)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;

subplot(2,1,2);
plot(f2, 20*log10(H2(1:N/2+1)));
title('Magnitude Response of the Filter (fs = 40 kHz)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
grid on;
