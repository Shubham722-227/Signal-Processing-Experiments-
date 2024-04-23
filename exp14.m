pkg load symbolic

%LAPLACE TRANSFORM
syms t real
syms a real
syms s complex
f = input('Enter a function in terms of t: ');
F = laplace(f, t, s);
disp(['Laplace Transform of ', char(f), ' is ', char(F)]);

