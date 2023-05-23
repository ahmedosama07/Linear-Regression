function [a0, a1] = leastSquare(y, x)
%leastSquare Summary of this function goes here
%   Detailed explanation goes here
n = length(x);

sigmaX = 0;
sigmaX2 = 0;
sigmaY = 0;
sigmaXY = 0;

for i = 1 : length(x)
    sigmaX = sigmaX + x(i);
    sigmaX2 = sigmaX2 + (x(i) .^ 2);
    sigmaY = sigmaY + y(i);
    sigmaXY = sigmaXY + (x(i) .* y(i));
end

A = [n sigmaX; sigmaX sigmaX2];
B = [sigmaY; sigmaXY];

[a0, a1] = struct('x', num2cell(linsolve(A, B))).x;
end