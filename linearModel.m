function f = linearModel(y, x)
%linearModel Summary of this function goes here
%   function calculates constants for linear model in least squares method
X = x;
Y = y;
[a0, a1] = leastSquare(X, Y);
f = a0 + a1 .* x;
end

