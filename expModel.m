function [f, r] = expModel(y, x)
%expModel Summary of this function goes here
%   function calculates constants for exponent model in least squares
%   method
Y = log(y);
X = x;
[a0, a1] = leastSquare(Y, X);
a = exp(a0);
b = a1;
f = a .* exp(b .* x);
[r, ~, ~] = bestFit(a0, a1, X, Y);
end