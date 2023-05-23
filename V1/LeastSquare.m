
function [a0,a1,r,r2]=LeastSquare(x,y)
sigma_x=0;
sigma_y=0;
sigma_x2 = 0;
sigma_xy = 0;
sr=0;
st=0;

n=length(x);
for i = 1 : length(x)
     sigma_x = sigma_x + x(i);
    sigma_x2 = sigma_x2 + (x(i) .^ 2);
    sigma_y = sigma_y + y(i);
    sigma_xy = sigma_xy + (x(i) .* y(i));
end
%coeffiecent(a0,a1) calculation
A = [n sigma_x; sigma_x sigma_x2];
B = [sigma_y; sigma_xy];
[a0, a1] = struct('x', num2cell(linsolve(A, B))).x;
%error calculation 
for i = 1 : length(x)
    sr=sr+(y(i)-a0-a1.*x(i)).^2;
    st=st+(y(i)-sigma_y./n).^2;
end
r2=1-sr./st;
r=sqrt(r2);
end


