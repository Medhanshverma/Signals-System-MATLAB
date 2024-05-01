% Define the input sinusoidal sequence shown in Figure P5-7(a)
x = [0, 1, 0, -1, 0, 1, 0, -1];

% Define the 8-point moving average FIR filter coefficients
h = ones(1, 8) / 8;

% Apply the filter to the input sequence
y = conv(x, h, 'same');

% Display the filter output sequence
disp('Filter Output Sequence:');
disp(y);