function f = growthRateModel(y, x)
%growthRateModel Summary of this function goes here
%   function calculates constants for growth rate model in least squares method
Y = 1 ./ y;
X = 1 ./ x;
[a0, a1] = leastSquare(Y, X);
a = 1 ./ a0;
b = a1 .* a;
f = (a .* x) / (b + x);
end