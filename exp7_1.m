% Step 1: Define the square wave function
function y = square_wave(t, T)
    y = 0.5 * (sign(sin(2 * pi * t / T)) + 1);
endfunction

% Step 2: Determine the fundamental frequency and number of harmonics
T = 2 * pi;        % Time period (periodicity) of the square wave
fundamental_freq = 1 / T;  % Fundamental frequency
num_harmonics = 10;   % Number of harmonics to compute

% Step 3: Calculate Fourier series coefficients
coefficients = zeros(1, num_harmonics);
t = linspace(0, T, 1000);   % Time vector for plotting

for k = 1:num_harmonics
    omega_k = 2 * pi * k / T;  % Angular frequency of the k-th harmonic
    integrand = square_wave(t, T) .* exp(-1i * omega_k * t);
    coefficients(k) = trapz(t, integrand) * (2 / T);
end

% Display the coefficients
disp('Fourier Series Coefficients:');
disp(coefficients);

% Plot the original square wave and its Fourier series approximation
figure;
plot(t, square_wave(t, T), 'b', 'LineWidth', 2);
hold on;

approximation = zeros(size(t));
for k = 1:num_harmonics
    approximation = approximation + coefficients(k) * exp(1i * 2 * pi * k * t / T);
end
plot(t, real(approximation), 'r--', 'LineWidth', 2);
legend('Original Square Wave', 'Fourier Series Approximation');
title('Square Wave and Its Fourier Series Approximation');
xlabel('t');
ylabel('Amplitude');
grid on;

