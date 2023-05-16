function [x y] = start()
%Start
% brief  : the program starts from here
% param  : no params
% return : returns the values of x and y
    x = input("Please enter the values of x: ");
    y = input("Please enter the values of y: ");
    while size(x) ~= size(y)
        fprintf("x and y must be the same size\n");
        x = input("Please enter the values of x: ");
        y = input("Please enter the values of y: ");
    end
end