function [f, r] = powerModel(y, x)
%powerModel Summary of this function goes here
%   function calculates constants for power model in least squares method
Y = log10(y);
X = log10(x);
[a0, a1] = leastSquare(Y, X);
a = 10 .^ a0;
b = a1;
f = a .* (x .^ b);
[r, ~, ~] = bestFit(a0, a1, X, Y);
end