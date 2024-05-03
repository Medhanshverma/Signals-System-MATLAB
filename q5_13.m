clc
clear all;

% Given x(n) samples
x = [1, 3, 5, 7, 9];

% Initialize y(n) sequence
y = zeros(1, length(x) - 1);

% Equation for linear interpolation
equation = 'y(n) = (x(n) + x(n+1)) / 2';

% Linear interpolation calculation
for n = 1:length(x)-1
   y(n) = (x(n) + x(n+1)) / 2; % Calculate interpolated value
end

% Print the equation
disp('Equation for y(n) in terms of x(n) samples:');
disp(equation);

% Print the interpolated sequence
disp('Interpolated sequence y(n):');
disp(y);

% Plot the input and output sequences
figure;
stem(x, 'b', 'DisplayName', 'x(n)');
hold on;
stem(1:length(y), y, 'r', 'filled', 'DisplayName', 'y(n)');
hold off;
title('Linear Interpolation: x(n) and y(n)');
xlabel('n');
ylabel('Value');
legend;
grid on;

Linear Interpolation Filter Block Diagram:
% Define input sequence x(n)
x = [1, 3, 5, 7, 9];

% Initialize output sequence y(n)
y = zeros(1, length(x));

% Define coefficients for linear interpolation filter
a0 = 0.5; % Coefficient for x(n)
a1 = 0.5; % Coefficient for x(n-1)

% Equation for filter operation
equation_filter = 'y(n) = a0 * x(n) + a1 * x(n-1)';

% Linear interpolation filter implementation
for n = 2:length(x)
   y(n) = a0 * x(n) + a1 * x(n-1); % Filter operation
end

% Print the equation for filter operation
disp('Equation for filter operation:');
disp(equation_filter);

% Print the filtered output sequence y(n)
disp('Filtered output sequence y(n):');
disp(y);

% Plot the block diagram of the linear interpolation filter
figure;
stem(1:length(x), x, 'b', 'DisplayName', 'x(n)');
hold on;
stem(2:length(y)+1, y, 'r', 'filled', 'DisplayName', 'y(n)');
stem([1, 1.5, 2.5], [a0, a1, a0], 'k', 'filled', 'Marker', 'diamond', 'DisplayName', 'Filter Coefficients');
hold off;
title('Block Diagram of Linear Interpolation Filter');
xlabel('n');
ylabel('Value');
legend;
grid on;
