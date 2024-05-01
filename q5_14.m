% Given coefficients and DC gains
h1 = [-0.8, 1.6, 25.5, 47, 25.5, 1.6, -0.8];
H1_0 = 99.6;
H2_0 = 103.6;

% Solve for Q
Q = (H2_0 - H1_0 + h1(3) - h1(5)) / 2;

% Display the value of Q
disp(['The value of Q is: ', num2str(Q)]);