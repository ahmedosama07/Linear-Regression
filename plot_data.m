function plot_data(x, y, yfit, model, coeffs, r2)
%Plot Data
%brief   : this functions plots the data and least square fit
%param   : six parameters: x, y, yfit, model, coeffs, r^2
%return  : void 
    figure;
    plot(x,y,'o');
    hold on;
    plot(x,yfit,'-');
    xlabel('x');
    ylabel('y');
    grid on;
    title(['Model: ' model ', Coefficients: ' num2str(coeffs) ', R^2: ' num2str(r2)]);
    legend('Data','Least squares fit');
end