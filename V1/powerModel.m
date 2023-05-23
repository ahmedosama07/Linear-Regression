function [f,r_power,r2_power]=powerModel(x,y)

X=log(x);
Y=log(y);
[a0,a1,r_power,r2_power]=LeastSquare(X,Y);
a=exp(a0);
b=a1;
f=a*x.^b;
end