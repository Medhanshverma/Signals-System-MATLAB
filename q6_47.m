% Given analog lowpass filter transfer function
R = 1; % Assume R = 1 for simplicity
C = 1; % Assume C = 1 for simplicity
Hs = tf([1], [R*C, 1]); % Transfer function H(s)

% Impulse invariance method (Method 2)
Ts = 1; % Sampling time
Hz_ii = c2d(Hs, Ts, 'impulse'); % Convert H(s) to H_ii(z) using impulse invariance method

% Bilinear transform method
Hz_bt = c2d(Hs, Ts, 'tustin'); % Convert H(s) to H_bt(z) using bilinear transform method

% Plot the frequency response of the digital filters
figure;
bode(Hz_ii, Hz_bt); % Bode plot of H_ii(z) and H_bt(z)
legend('H_{ii}(z)', 'H_{bt}(z)');
title('Frequency Response of Digital Filters');

% Draw Direct Form II block diagrams
figure;
subplot(2, 1, 1);
zplane([], roots(Hz_ii.Denominator{1})); % Pole-zero plot of H_ii(z)
title('Pole-Zero Plot of H_{ii}(z)');
subplot(2, 1, 2);
zplane([], roots(Hz_bt.Denominator{1})); % Pole-zero plot of H_bt(z)
title('Pole-Zero Plot of H_{bt}(z)');