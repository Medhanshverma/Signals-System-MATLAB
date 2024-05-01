% Given values
R = 0.9; % pole radius
fs = 1.8e3; % sample rate in Hz
f_noise = 120; % frequency of noise in Hz

% Calculate the notch frequency in radians/sample
omega_c = 2*pi * f_noise / fs;

% (a) Plot the locations of poles and zeros on the z-plane
figure;
zplane([1, -2*cos(omega_c), 1], [1, -2*R*cos(omega_c), R^2]);
title('Notch Filter Pole-Zero Plot');
legend('Zeros', 'Poles');

% (b) Display the correct value of omega_c
disp(['Correct value for omega_c to attenuate 120 Hz noise: ', num2str(omega_c), ' radians/sample']);