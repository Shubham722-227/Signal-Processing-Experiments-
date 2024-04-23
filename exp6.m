% Step 1: Define the two sequences
x = [1, 2, 3, 4];       % First sequence
h = [0.5, 0.2, 0.1];    % Second sequence

% Step 2: Compute the circular convolution using the convolution formula
N = length(x);
M = length(h);
L = N + M - 1;          % Length of the convolved sequence
y = zeros(1, L);        % Initialize the result sequence

for n = 1:L
    for k = 1:M
        if n-k+1 > 0 && n-k+1 <= N
            y(n) = y(n) + x(n-k+1) * h(k);
        else
            y(n) = y(n) + x(mod(n-k+1, N)+1) * h(k);
        end
    end
end

% Step 3: Plot the original sequences and the convolved sequence
n_x = 0:N-1;     % Time indices for sequence x
n_h = 0:M-1;     % Time indices for sequence h
n_y = 0:L-1;     % Time indices for the convolved sequence y

figure;
subplot(3, 1, 1);
stem(n_x, x, 'b', 'filled');
title('Sequence x[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(n_h, h, 'r', 'filled');
title('Sequence h[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(n_y, y, 'g', 'filled');
title('Circular Convolution of x[n] and h[n]');
xlabel('n');
ylabel('Amplitude');

% Step 4: Verify the result by analytical calculation
y_analytical = conv(x, h, 'full');

% Print the analytical and computed results
disp('Analytical result:');
disp(y_analytical);
disp('Computed result:');
disp(y);

