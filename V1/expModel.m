function [f,r_exp,r2_exp]=expModel(x,y)
X=x;
Y=log(y);
[a0,a1,r_exp,r2_exp]=LeastSquare(X,Y);
a=exp(a0);
b=a1;
f = a .* exp(b .* x);
end