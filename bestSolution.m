function model = bestSolution(rLin, rExp, rPow, rGr)
%bestSolution Summary of this function goes here
%   function finds best solution for linear regression
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