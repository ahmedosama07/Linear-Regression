function [f, r] = linearModel(y, x)
%linearModel Summary of this function goes here
%   function calculates constants for linear model in least squares method
X = x;
Y = y;
X(X==-Inf) = -10000;
X(X==Inf) = 10000;
Y(Y==-Inf) = -10000;
Y(Y==Inf) = 10000;
[a0, a1] = leastSquare(Y, X);
f = a0 + a1 .* x;
[r, ~, ~] = bestFit(a0, a1, X, Y);
end