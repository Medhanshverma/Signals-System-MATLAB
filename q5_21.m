% Given values
fs = 2e6; % sample rate in Hz
cutoff_freq = 600e3; % cutoff frequency of the lowpass filter in Hz
tone_freq = 200e3; % frequency of the sinusoidal tone in Hz
num_taps = 70; % number of taps in the FIR filter
% Calculate the normalized cutoff frequency
omega_c = 2*pi * cutoff_freq / fs;
% Calculate the group delay of the filter at the tone frequency
group_delay = num_taps / 2;
% Calculate the time delay in seconds
time_delay = group_delay / fs;
% Display the time delay
disp(['Time delay between input and output for a 200 kHz tone: ', num2str(time_delay), ' seconds']);