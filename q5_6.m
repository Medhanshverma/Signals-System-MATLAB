% Original filter coefficients designed for 20kHz sample rate
h_original = [0.1, 0.2, 0.3, 0.4, 0.3, 0.2, 0.1];

% Upsampling factor
upsampling_factor = 2;

% Upsample the filter coefficients
h_upsampled = upsample(h_original, upsampling_factor);

% Rescale the filter coefficients
h_rescaled = h_upsampled * upsampling_factor;

% Display the rescaled filter coefficients
disp('Rescaled Filter Coefficients:');
disp(h_rescaled);