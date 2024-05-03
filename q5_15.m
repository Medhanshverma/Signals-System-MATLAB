clc
clear all;

% Define filter coefficients
h0 = 1; % Assuming h(0) = h(4) = 1 for simplicity
h1 = 0.5; % Assuming h(1) = h(3) = 0.5 for simplicity
h2 = 0.8;

% Filter's original difference equation
disp('Filter Difference Equation:');
disp('y(n) = h(0)*x(n) + h(1)*x(n-1) + h(2)*x(n-2) + h(3)*x(n-3) + h(4)*x(n-4)');

% Rewrite the difference equation to reduce multiplies
disp('Rewritten Difference Equations:');
disp('y(n) = h(0)*[x(n) + x(n-4)] + h(1)*[x(n-1) + x(n-3)] + h(2)*x(n-2)');
disp('Only three multiplies per output sample are required.');

% Plotting the block diagram
figure;
hold on;

% Input x(n)
text(-0.5, 0, 'x(n)');
line([-0.2 0], [0 0]);

% Multipliers for h(0) and x(n), h(4) and x(n-4)
text(0.1, 0.5, 'h(0)');
text(0.1, -0.5, 'h(0)');
line([0 0.3], [0.4 0.4]);
line([0 0.3], [-0.4 -0.4]);
line([0.3 0.5], [0.4 0.4], 'LineStyle', 'none', 'Marker', 'o');
line([0.3 0.5], [-0.4 -0.4], 'LineStyle', 'none', 'Marker', 'o');

% Multipliers for h(1) and x(n-1), h(3) and x(n-3)
text(0.6, 1, 'h(1)');
text(0.6, -1, 'h(1)');
line([0.7 1], [0.9 0.9]);
line([0.7 1], [-0.9 -0.9]);
line([1 1.2], [0.9 0.9], 'LineStyle', 'none', 'Marker', 'o');
line([1 1.2], [-0.9 -0.9], 'LineStyle', 'none', 'Marker', 'o');

% Multiplier for h(2) and x(n-2)
text(1.3, 0, 'h(2)');
line([1.4 1.6], [0 0], 'LineStyle', 'none', 'Marker', 'o');

% Output y(n)
text(1.7, 0, 'y(n)');
line([1.8 2], [0 0]);

title('Block Diagram of Redesigned FIR Filter');
axis off;
hold off;
