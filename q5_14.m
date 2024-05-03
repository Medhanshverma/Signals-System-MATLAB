clc
clear all;

% Given coefficients for h1(k) and h2(k)
h1 = [-0.8, 1.6, 25.5, 47, 25.5, 1.6, -0.8];
H1_0 = sum(h1); % Calculate DC gain for h1(k)

% Desired DC gain for h2(k)
H2_0_desired = 103.6;

% Calculate Q to achieve desired DC gain for h2(k)
Q = (H2_0_desired - H1_0 + 2 * 25.5) / 2;

% Adjust coefficients for h2(k) with calculated Q
h2 = [-0.8, 1.6, Q, 47, Q, 1.6, -0.8];
H2_0 = sum(h2); % Calculate DC gain for h2(k)

% Plotting the coefficients of h1(k) and h2(k)
k = 0:length(h1)-1;

figure;
subplot(2,1,1);
stem(k, h1, 'b', 'filled', 'DisplayName', 'h1(k)');
title('Filter Coefficients for h1(k)');
xlabel('k');
ylabel('Coefficient Value');
grid on;
legend;

subplot(2,1,2);
stem(k, h2, 'r', 'filled', 'DisplayName', 'h2(k)');
title(['Filter Coefficients for h2(k) (Q = ' num2str(Q) ')']);
xlabel('k');
ylabel('Coefficient Value');
grid on;
legend;

% Display computed DC gains and Q
disp(['DC gain of h1(k): ' num2str(H1_0)]);
disp(['DC gain of h2(k): ' num2str(H2_0)]);
disp(['Value of Q: ' num2str(Q)]);
