% Input signals
x = [1, 2, 3, 4, 5];   % Signal x
h = [0.5, 0.5];        % Signal h

% Lengths of the signals
M = length(x);
N = length(h);

% Convolution result
y = zeros(1, M + N - 1);

% Perform convolution
for n = 1:M+N-1
    for k = max(1, n-M+1):min(n, N)
        y(n) = y(n) + x(n-k+1) * h(k);
    end
end

% Display the result
disp("Convolution of x and h:");
disp(y);

