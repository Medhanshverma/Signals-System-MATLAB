clc
clear all;

% Define the frequency range
omega = linspace(-pi, pi, 1000);

% Define the filter coefficients
h1 = [-0.8, 1.6, 25.5, 47, 25.5, 1.6, -0.8];
h2 = [-0.8, 1.6, 27.5, 47, 27.5, 1.6, -0.8];

% Compute the frequency responses
H1 = 1 + 2*exp(-1j*omega) + exp(-2*1j*omega);
H2 = 1 + exp(-1j*omega);

% Plot the frequency magnitude response
figure;
subplot(3, 1, 1);
plot(omega, abs(H1), 'b', omega, abs(H2), 'r');
xlabel('Frequency (radians/sample)');
ylabel('|H(\omega)|');
title('Frequency Magnitude Response');
legend('|H1(\omega)|', '|H2(\omega)|');
grid on;

% Plot the phase response
subplot(3, 1, 2);
plot(omega, angle(H1), 'b', omega, angle(H2), 'r');
xlabel('Frequency (radians/sample)');
ylabel('Phase (radians)');
title('Phase Response');
legend('H1(\omega) Phase', 'H2(\omega) Phase');
grid on;

% Mark the frequency where the responses are equal
omega_o = pi;
hold on;
plot(omega_o, angle(H1(abs(omega - omega_o) < eps)), 'bo', 'MarkerSize', 8);
plot(omega_o, angle(H2(abs(omega - omega_o) < eps)), 'ro', 'MarkerSize', 8);
hold off;

% Plot the frequency magnitude response in dB
figure;
subplot(3, 1, 3);
plot(omega, 20*log10(abs(H1)), 'b', omega, 20*log10(abs(H2)), 'r');
xlabel('Frequency (radians/sample)');
ylabel('|H(\omega)| (dB)');
title('Frequency Magnitude Response (dB)');
legend('|H1(\omega)| (dB)', '|H2(\omega)| (dB)');
grid on;


% Mark the frequency where the responses are equal
omega_o = pi;
hold on;
plot(omega_o, 20*log10(abs(angle(H1(abs(omega - omega_o) < eps)))), 'bo', 'MarkerSize', 8);
plot(omega_o, 20*log10(abs(angle(H2(abs(omega - omega_o) < eps)))), 'ro', 'MarkerSize', 8);
hold off;
