clc;
clear all;

n=0:40;
d=10;
a=3.0;
b=-2;

x=a*cos(2*pi*0.1*n)+b*cos(2*pi*0.4*n);
xd=[zeros(1,d) x];

num=[2.2403 2.4903 2.2403];
den=[1 -0.4 0.75];

ic=[0 0];
y=filter(num, den, x, ic);
yd=filter(num, den, xd, ic);

dd=y-yd(1+d:41+d);

clc;
clear all;

n=0:40;
d=10;
a=3.0;
b=-2;

x=a*cos(2*pi*0.1*n)+b*cos(2*pi*0.4*n);
xd=[zeros(1,d) x];

num=[2.2403 2.4903 2.2403];
den=[1 -0.4 0.75];

ic=[0 0];
y=filter(num, den, x, ic);
yd=filter(num, den, xd, ic);

dd=y-yd(1+d:41+d);

% Plotting
figure;
subplot(3, 1, 1);
stem(n, y);
xlabel('n');
ylabel('Amplitude');
title('Output y[n]');

subplot(3, 1, 2);
stem(n, yd(1:41));
xlabel('n');
ylabel('Amplitude');
title('Output yd[n]');

subplot(3, 1, 3);
stem(n, dd);
xlabel('n');
ylabel('Amplitude');
title('Difference Signal');





