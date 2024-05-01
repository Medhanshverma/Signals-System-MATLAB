% Define the poles and zeros
zeros = [-1];
poles = [0.25 + 0.25j, 0.25 - 0.25j];
gain = 1; % Assume gain is 1 if not specified

% Create the transfer function
H = zpk(zeros, poles, gain);

% Optionally, convert to polynomial form to see the coefficients
[Hnum, Hden] = tfdata(H, 'v');

% Display the transfer function
disp('Numerator coefficients:');
disp(Hnum);
disp('Denominator coefficients:');
disp(Hden);