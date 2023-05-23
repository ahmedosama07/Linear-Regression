function [f, r] = growthRateModel(y, x)
%growthRateModel Summary of this function goes here
%   function calculates constants for growth rate model in least squares method
Y = 1 ./ y;
X = 1 ./ x;
X(X==-Inf) = -10000;
X(X==Inf) = 10000;
Y(Y==-Inf) = -10000;
Y(Y==Inf) = 10000;
[a0, a1] = leastSquare(Y, X);
a = 1 ./ a0;
b = a1 .* a;
f = (a .* x) ./ (b + x);
[r, ~, ~] = bestFit(a0, a1, X, Y);
end