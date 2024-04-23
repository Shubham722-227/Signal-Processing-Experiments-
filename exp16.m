% Define the parameters of the square wave
T = 1;          % Period of the square wave
duty_cycle = 0.5; % Duty cycle of the square wave

% Define the number of terms in the Fourier series
N = 10;

% Define the time vector
t = linspace(0, T, 1000);

% Calculate the Fourier series coefficients
a0 = 0.5 * duty_cycle;
an = zeros(1, N);
bn = zeros(1, N);

% Define the square wave function
square_wave = @(t, duty_cycle) (mod(t, T) < duty_cycle*T) * 1;

for n = 1:N
    an(n) = (2/T) * integral(@(t) square_wave(t, duty_cycle) .* cos(2*pi*n*t/T), 0, T);
    bn(n) = (2/T) * integral(@(t) square_wave(t, duty_cycle) .* sin(2*pi*n*t/T), 0, T);
end

% Calculate the reconstructed signal using the Fourier series
reconstructed_signal = a0/2;

for n = 1:N
    reconstructed_signal = reconstructed_signal + an(n) * cos(2*pi*n*t/T) + bn(n) * sin(2*pi*n*t/T);
end

% Plot the original square wave and the reconstructed signal
figure;
subplot(2, 1, 1);
plot(t, square_wave(t, duty_cycle), 'b', 'LineWidth', 2);
title('Original Square Wave');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 1, 2);
plot(t, reconstructed_signal, 'r', 'LineWidth', 2);
title(['Reconstructed Signal (', num2str(N), ' Terms)']);
xlabel('Time');
ylabel('Amplitude');

sgtitle('Square Wave Fourier Series');

