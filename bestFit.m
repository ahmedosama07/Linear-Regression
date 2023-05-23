function [r, sr, st] = bestFit(a0, a1, x, y)
%bestFit Summary of this function goes here
%   function calculates correlation of a least squares fit
sr = 0;
st = 0;
sigmaY = 0;
for i = 1 : length(x)
    sigmaY = sigmaY + y(i);
end

yMean = sigma_y./n;

for i = 1 : length(x)
    sr = sr + (y(i) -a0- a1 .* x(i)).^2;
    st = st + (y(i) - yMean).^2;
end

r2=1-sr./st;
r=sqrt(r2);
end