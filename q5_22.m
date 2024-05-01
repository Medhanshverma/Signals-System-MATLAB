% Given values
num_taps = 17; % number of taps in the FIR filter
fs = 1; % normalized sample rate
% (a) For a 17-tap FIR filter
% Group delay of a linear-phase FIR filter is given by (N-1)/2
group_delay_1 = (num_taps - 1) / 2;
disp(['Group delay of the 17-tap linear-phase FIR filter: ', num2str(group_delay_1), ' samples']);
% (b) For a 17-tap half-band FIR filter
% Half-band filters have a group delay of (N-1)/4 samples
group_delay_2 = (num_taps - 1) / 4;
disp(['Group delay of the 17-tap half-band FIR filter: ', num2str(group_delay_2), ' samples']);