% Input sequences
x = [1, 2, 3, 4];
h = [0.5, 0.5];

% Perform convolution using conv function
result = conv(x, h);

% Display the input sequences and the convolution result
disp('Input sequence x:');
disp(x);

disp('Input sequence h:');
disp(h);

disp('Convolution result:');
disp(result);

% Plot the result
stem(0:length(result)-1, result, 'filled');
xlabel('n');
ylabel('Convolution Result');
title('Convolution of x and h');

