omega = linspace(0, 2*pi, 100); % Define the frequency range

H1 = 2*cos(omega);
H2 = 3*sin(omega);
H3 = 4*cos(2*omega);
H4 = 5*sin(2*omega);

overall_response = H1 .* H2 + H3 + H4; % Combine the subfilter responses

% Plot the overall frequency response
figure;
plot(omega, abs(overall_response)); % Plot the magnitude of the overall response
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
title('Overall Frequency Response');