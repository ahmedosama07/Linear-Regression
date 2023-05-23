function model = bestSolution(rLin, rExp, rPow, rGr)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
r = max([rLin, rExp, rPow, rGr]);

switch r
    case rLin
        model = 0;
    case rExp
        model = 1;
    case rPow
        model = 2;
    case rGr
        model = 3;
end
end