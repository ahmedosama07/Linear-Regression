x = [2 4 6 8 10]';
y = [3.1 6.2 10.9 18.8 29.3]';
model = input('Enter the model: \n 1.Linear model\n 2.Exponential Model\n 3.Power Model\n 4.Growth Model\n 5.Auto\n ');
switch model
    case 1
        [f,r_linear,r2_linear]=linearModel(x,y);
    case 2
       [f,r_exp,r2_exp]=expModel(x,y);
    case 3
        [f,r_power,r2_power]=powerModel(x,y);
    case 4
        [f,r_growthRate,r2_growthRate]=growthRateModel(x,y);
    case 5
        [f,r]=checkBest(x,y);
        
end


  figure(1);
            plot(x,y,'x',x,f,'-');
            title('Growth Rate Model')


