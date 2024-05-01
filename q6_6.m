% Given transfer function
num = [1 0.3 1]; % numerator coefficients
den = [1 0.3 0.8]; % denominator coefficients

% (a) Convert transfer function to have negative-only exponents
[num_neg, den_neg] = eqtflength(num, den);

% Display the transfer function with negative-only exponents
disp('Transfer function with negative-only exponents:');
disp(['Numerator: ', num2str(num_neg)]);
disp(['Denominator: ', num2str(den_neg)]);

% (b) Check stability of the IIR filter
if all(abs(roots(den)) < 1)
    disp('The IIR filter is stable.');
else
    disp('The IIR filter is unstable.');
end

% (c) Draw Direct Form I structure
figure;
subplot(2,1,1);
stem(0:length(num)-1, num);
title('Direct Form I - Numerator Coefficients');
xlabel('Delay');
ylabel('Coefficient');

subplot(2,1,2);
stem(1:length(den)-1, den(2:end));
title('Direct Form I - Denominator Coefficients');
xlabel('Delay');
ylabel('Coefficient');

% (d) Draw Direct Form II structure
figure;
subplot(2,1,1);
stem(1:length(num)-1, num(2:end));
title('Direct Form II - Numerator Coefficients');
xlabel('Delay');
ylabel('Coefficient');

subplot(2,1,2);
stem(1:length(den)-1, den(2:end));
title('Direct Form II - Denominator Coefficients');
xlabel('Delay');
ylabel('Coefficient');