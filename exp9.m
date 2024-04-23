% Fourier Series Coefficients Calculation for Square Wave
clear; clc;

% Define parameters
T = 2;  % Period of the square wave
D = 0.5;  % Duty cycle (0 < D < 1)
N = 50;  % Number of Fourier series coefficients to calculate

% Define the square wave function
function y = square_wave(t, T, D)
    y = 0.5 * (1 + sign(sin(2*pi*t/T - pi*D)));
end

% Calculate the Fourier series coefficients
a0 = 1/T * integral(@(t) square_wave(t, T, D), 0, T);  % DC component
an = zeros(1, N);  % Coefficients for cosines
bn = zeros(1, N);  % Coefficients for sines

for n = 1:N
    an(n) = 2/T * integral(@(t) square_wave(t, T, D) .* cos(2*pi*n*t/T), 0, T);
    bn(n) = 2/T * integral(@(t) square_wave(t, T, D) .* sin(2*pi*n*t/T), 0, T);
end

% Reconstruct the signal using the first 50 terms
t = linspace(0, T, 1000); % Time vector for plotting
square_wave_reconstructed = a0/2; % Initializing the reconstructed signal

for n = 1:N
    square_wave_reconstructed = square_wave_reconstructed + an(n) * cos(2*pi*n*t/T) + bn(n) * sin(2*pi*n*t/T);
end

% Plot the original square wave and its Fourier series representation
plot(t, square_wave(t, T, D), 'b', 'LineWidth', 2); % Original square wave
hold on;
plot(t, square_wave_reconstructed, 'r', 'LineWidth', 1); % Fourier series representation
hold off;

% Add labels and title to the plot
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Fourier Series Representation of Square Wave');
legend('Original Square Wave', 'Fourier Series (50 terms)');
grid on;

