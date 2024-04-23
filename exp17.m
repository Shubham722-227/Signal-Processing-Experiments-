% Define the parameters of the square wave
T = 1;          % Period of the square wave
duty_cycle = 0.5; % Duty cycle of the square wave

% Define the number of terms in the Fourier series
N = 50;

% Define the time vector
t = linspace(0, T, 1000);

% Define the square wave function
function y = square_wave(t, duty_cycle)
    T = 1; % Period of the square wave
    y = (mod(t, T) < duty_cycle*T) * 1;
end

% Calculate the Fourier series coefficients
a0 = 0.5 * duty_cycle;
an = zeros(1, N);
bn = zeros(1, N);

for n = 1:N
    an(n) = (2/T) * integral(@(t) square_wave(t, duty_cycle) .* cos(2*pi*n*t/T), 0, T);
    bn(n) = (2/T) * integral(@(t) square_wave(t, duty_cycle) .* sin(2*pi*n*t/T), 0, T);
end

% Reconstruct the signal using the first 50 Fourier series terms
reconstructed_signal = a0/2;

for n = 1:N
    reconstructed_signal = reconstructed_signal + an(n) * cos(2*pi*n*t/T) + bn(n) * sin(2*pi*n*t/T);
end

% Plot the Fourier series representation as a function of time
figure;
plot(t, reconstructed_signal, 'r', 'LineWidth', 2);
title(['Fourier Series Representation (', num2str(N), ' Terms)']);
xlabel('Time');
ylabel('Amplitude');

sgtitle('Fourier Series Representation of Square Wave');

