% Define the input x(n) time samples as given in Figure P5-13(a)
x = [2, 4, 6, 8, 10];

% Perform linear interpolation to calculate the interpolated samples y(n)
y = zeros(1, length(x) - 1);
for n = 1:length(x) - 1
    y(n) = x(n) + (x(n+1) - x(n)) / 2;
end

% Display the interpolated samples y(n)
disp('Interpolated Samples (y(n)):');
disp(y);