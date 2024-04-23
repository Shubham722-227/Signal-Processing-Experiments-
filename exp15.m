pkg load symbolic

%INVERSE LAPLACE TRANSFORM
syms t real
syms a real
syms s complex
F = input('Enter a function in terms of s: ');
f = ilaplace(F, s, t);
disp(['Inverse Laplace Transform of ', char(F), ' is ', char(f)]);

