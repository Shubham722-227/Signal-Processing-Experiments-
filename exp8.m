% Fourier Series Coefficients Calculation for Square Wave
clear; clc;

% Define parameters
T = 2;  % Period of the square wave
D = 0.5;  % Duty cycle (0 < D < 1)
N = 10;  % Number of Fourier series coefficients to calculate

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

% Display the coefficients
disp('Fourier Series Coefficients:');
disp(['a0 =   ', num2str(a0)]);
disp(['an =   ', num2str(an)]);
disp(['bn =   ', num2str(bn)]);

