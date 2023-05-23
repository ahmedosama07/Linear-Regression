function [f,r_linear,r2_linear] =linearModel(x,y)
X=x;
Y=y;
[a0,a1,r_linear,r2_linear]=LeastSquare(X,Y);
f=a0+a1.*x;
end