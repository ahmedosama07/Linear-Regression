function [a0, a1] = expModel(y, x)
%expModel Summary of this function goes here
%   function calculates constants for exponent model in least squares
%   method
Y = log(y);
X = x;
[a, b] = leastSquare(Y, X);
a0 = log(a);
a1 = b;
end