% Given values
pole = 1; % pole at the unit circle

% (a) Plot the pole/zero diagram
figure;
zplane([], pole);
title('Pole/Zero Diagram of the Resonator System');

% (b) Calculate the frequency at which the pole resides
fs = 1; % normalized sample rate
freq = angle(pole) * fs / (2*pi); % frequency in terms of fs

% (c) Plot the time-domain impulse response
impulse_response = [1, -1]; % impulse response coefficients
figure;
stem(0:length(impulse_response)-1, impulse_response);
title('Time-Domain Impulse Response of the Resonator System');
xlabel('n');
ylabel('Amplitude');

% (d) Comment on the relationship between pole location and frequency of oscillating impulse response
disp(['The frequency of the oscillating impulse response output samples is directly related to the angle of the pole on the z-plane.']);