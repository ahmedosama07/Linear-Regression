x = 0:0.1:10;
y = exp(0.5*x) + randn(size(x));
model = input('Enter the model: \n 1.Linear model\n 2.Exponential Model\n 3.Power Model\n 4.Growth Model\n 5.Auto\n 6.All\n');
switch model
    case 1
        [f,r_linear,r2_linear]=linearModel(x,y);
        figure(1);
  plot(x,y,'x',x,f,'-');
  title('Linear Model')
    case 2
       [f,r_exp,r2_exp]=expModel(x,y);
       figure(1);
  plot(x,y,'x',x,f,'-');
  title('Exponential Model')
       
    case 3
        [f,r_power,r2_power]=powerModel(x,y);
        figure(1);
  plot(x,y,'x',x,f,'-');
  title('power Model')
    case 4
        [f,r_growthRate,r2_growthRate]=growthRateModel(x,y);
        figure(1);
  plot(x,y,'x',x,f,'-');
  title('Growth rate Model')
    case 5
        [f,r]=checkBest(x,y);
   % case 6
        
end


  


