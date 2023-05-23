function [f,r_growthRate,r2_growthRate] =growthRateModel(x,y)
X=1./x;
Y=1./y;
[a0,a1,r_growthRate,r2_growthRate]=LeastSquare(X,Y);
a=1./a0;
b=a1.*a;
f=a.*x./(b+x);
end