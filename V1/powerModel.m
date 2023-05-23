function [f,r_power,r2_power]=powerModel(x,y)
X=log10(x);
Y=log10(y);
[a0,a1,r_power,r2_power]=LeastSquare(X,Y);
a=10.^a0;
b=a1;
f=a*x.^b;
end