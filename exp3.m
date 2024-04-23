clc;
clear all;

% Continuous-time signal
t_continuous = -10:0.01:10;
continuous_signal = sin(t_continuous);

% Discrete signal
t_discrete = -10:1:10;
discrete_signal = sin(t_discrete);

% Sampled signal
Fs = 10; % Sampling frequency
Ts = 1/Fs; % Sampling period
t_sampled = -10:Ts:10;
sampled_signal = sin(t_sampled);

% Plot the continuous-time signal
figure
plot(t_continuous, continuous_signal)
xlabel('Time')
ylabel('Amplitude')
title('Continuous-Time Signal')

% Plot the discrete signal
figure
stem(t_discrete, discrete_signal)
xlabel('Time')
ylabel('Amplitude')
title('Discrete Signal')

% Plot the sampled signal
figure
stem(t_sampled, sampled_signal)
xlabel('Time')
ylabel('Amplitude')
title('Sampled Signal')

