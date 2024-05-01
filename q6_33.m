% Given data
A = -0.7; % Value of A coefficient
fs = 8000; % Sample rate (samples/second)

% (a) Musical note detection (using the previous MATLAB code)

% (b) Stability analysis
% Calculate the pole location
pole = roots([1, -A, 1]);

% Check if all poles are within the unit circle
is_stable = all(abs(pole) < 1);

if is_stable
    disp('The filter is unconditionally stable.');
else
    disp('The filter is not unconditionally stable.');
end

% (c) Range of negative values of A for stability
% Let's vary the A coefficient from -1 to 0 and check stability
range_A = -1:0.01:0;
stable_A = [];

for A_val = range_A
    pole = roots([1, -A_val, 1]);
    if all(abs(pole) < 1)
        stable_A = [stable_A, A_val];
    end
end

fprintf('The range of negative values of A for stability is from %.2f to %.2f.\n', min(stable_A), max(stable_A));

% (d) Resonant frequency calculation
% Find the pole closest to the unit circle
[~, idx] = min(abs(abs(pole) - 1));
resonant_freq = fs * angle(pole(idx)) / (2*pi);

fprintf('The resonant frequency of the filter is approximately %.2f Hz.\n', resonant_freq);