function [yfit coeffs r2 model]= choose_model(x, y)
%Choose Model
% brief  : this function gets the desired model from the user
% param  : two parameters: x and y
% return : four values: yfit, coefficients, r^2, model
    choice = 0;
    while choice == 0
    fprintf("Please choose the number coressponding to the desired model:\n1- Linear\n2- Exponential\n3- Power\n4- Growth\n");
    choice = input("model: ");
        switch choice
            case 1
                model = "Linear";
                coeffs = polyfit(x,y,1);
                yfit = polyval(coeffs,x);
                yresid = y - yfit;
                SSresid = sum(yresid.^2);
                SStotal = (length(y)-1) * var(y);
                r2 = 1 - SSresid/SStotal;
            case 2
                model = "Exponential";
                coeffs = polyfit(x,log(y),1);
                yfit = exp(polyval(coeffs,x));
                yresid = y - yfit;
                SSresid = sum(yresid.^2);
                SStotal = (length(y)-1) * var(y);
                r2 = 1 - SSresid/SStotal;
            case 3
                model = "Power";
                coeffs = polyfit(log10(x),log10(y),1);
                yfit = exp(polyval(coeffs,log(x)));
                yresid = y - yfit;
                SSresid = sum(yresid.^2);
                SStotal = (length(y)-1) * var(y);
                r2 = 1 - SSresid/SStotal;
            case 4
                model = "Growth";
                coeffs = polyfit(x,log(y),1);
                yfit = coeffs(1)*exp(coeffs(2)*x);
                yresid = y - yfit;
                SSresid = sum(yresid.^2);
                SStotal = (length(y)-1) * var(y);
                r2 = 1 - SSresid/SStotal;
            otherwise
                fprintf("Invalid Input");
                choice = 0;
        end
    end
end