clc;
clear all;

N = 40;
num = [2.403, 2.49, 2.23];
den = [1, -0.4, 0.75];

% Compute the impulse response using impz
y = impz(num, den, N);

% Plot the impulse response using stem
stem(0:N-1, y);
xlabel('n');
ylabel('Amplitude');
title('Impulse Response of the System');

