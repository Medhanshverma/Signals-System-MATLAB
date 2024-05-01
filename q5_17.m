% Given values
fs = 8.25e6; % sample rate in Hz
f_noise = 3.35e6; % noise center frequency in Hz
% Calculate the normalized noise frequency
omega_n = 2*pi * f_noise / fs;
% Calculate h1 to place nulls at the noise center frequency
h1 = -2 * cos(omega_n);
% Display the value of h1
disp(['Value of h1 to place nulls at +/- 3.35 MHz: ', num2str(h1)]);
% DC gain of the filter is given by the sum of all tap coefficients
dc_gain = 1 + h1 + 1;
disp(['DC gain of the filter: ', num2str(dc_gain)]);
% The filter has a linear phase response because the impulse response is symmetric
% and the filter coefficients are real.