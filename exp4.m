clc;
clear all;

% Generate the time vector
t = 0:0.01:10;

% Signal
signal = sin(t);

% Amplitude scaling
amplitude_scaled_signal = 2 * signal;

% Time shifting
time_shifted_signal = sin(t - 2);

% Time scaling
time_scaled_signal = sin(2 * t);

% Time inversion
time_inverted_signal = sin(-t);

% Plot the original signal
figure
plot(t, signal)
xlabel('Time')
ylabel('Amplitude')
title('Original Signal')

% Plot the amplitude scaled signal
figure
plot(t, amplitude_scaled_signal)
hold on
plot(t, signal)
xlabel('Time')
ylabel('Amplitude')
title('Amplitude Scaled Signal')


% Plot the time shifted signal
figure
plot(t, time_shifted_signal)
hold on
plot(t, signal)
xlabel('Time')
ylabel('Amplitude')
title('Time Shifted Signal')


% Plot the time scaled signal
figure
plot(t, time_scaled_signal)
hold on
plot(t, signal)
xlabel('Time')
ylabel('Amplitude')
title('Time Scaled Signal')


% Plot the time inverted signal
figure
plot(t, time_inverted_signal)
hold on
plot(t, signal)
xlabel('Time')
ylabel('Amplitude')
title('Time Inverted Signal')


