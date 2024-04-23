% Define the parameters of the square wave
T = 2;        % Period of the square wave (in seconds)
A = 1;        % Amplitude of the square wave
D = 0.5;      % Duty cycle (0 <= D <= 1)

% Number of terms (harmonics) to compute in the Fourier series
num_terms = 10;

% Time vector for one period of the square wave
t = linspace(0, T, 1000);

% Function to generate the square wave
square_wave = A * (square(2*pi*t/T, D) + 1)/2;

% Compute Fourier series coefficients
coefficients = zeros(1, num_terms);

for n = 1:num_terms
    % Function to calculate the nth term of the Fourier series
    % for the square wave
    term = square_wave .* cos(2*pi*n*t/T);

    % Compute the nth coefficient using trapezoidal integration
    coefficients(n) = (2/T) * trapz(t, term);
end

% Display the Fourier series coefficients
disp('Fourier Series Coefficients:');
disp(coefficients);

% Plot the square wave and its Fourier series approximation
figure;
plot(t, square_wave, 'b', 'LineWidth', 2);
hold on;

% Fourier series approximation
approximation = zeros(size(t));
for n = 1:num_terms
    approximation = approximation + coefficients(n) * cos(2*pi*n*t/T);
end

plot(t, approximation, 'r--', 'LineWidth', 2);
hold off;

xlabel('Time (seconds)');
ylabel('Amplitude');
title('Square Wave and its Fourier Series Approximation');
legend('Square Wave', 'Fourier Series Approximation');
grid on;

