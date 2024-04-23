clc;
clear all;

x = [1, zeros(1, 40)];
n = 0:40;

num = [0.06, -0.19, 0.27, -0.26, 0.12];
den = [1.16, 2.25, 1.35, 0.68];

y = filter(num, den, x);

num1 = [0.3, -0.2, 0.4];
den1 = [1, 0.9, 0.8];

y1 = filter(num1, den1, y);
dd = y - y1;

% Plotting
figure;
subplot(3, 1, 1);
stem(n, y);
xlabel('n');
ylabel('Amplitude');
title('Output y[n]');

subplot(3, 1, 2);
stem(n, y1);
xlabel('n');
ylabel('Amplitude');
title('Output y1[n]');

subplot(3, 1, 3);
stem(n, dd);
xlabel('n');
ylabel('Amplitude');
title('Difference Signal (y - y1)');

