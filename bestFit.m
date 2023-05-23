function [r, sr, st] = bestFit(a0, a1, x, y)
%bestFit Summary of this function goes here
%   function calculates correlation of a least squares fit
sr = 0;
st = 0;
sigmaY = 0;
n = length(x);
for i = 1 : length(y)
    sigmaY = sigmaY + y(i);
end

yMean = sigmaY ./ n;

for i = 1 : length(y)
    sr = sr + (y(i) - a0 - a1 * x(i)) .^ 2;
    st = st + (y(i) - yMean) .^ 2;
end

r2 = (st - sr) ./ st;
r = sqrt(r2);
end