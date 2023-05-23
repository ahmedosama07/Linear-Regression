function [f,r]=checkBest(x,y)
[f_linear,r_linear,~]=linearModel(x,y);
        [f_exp,r_exp,~]=expModel(x,y);
        [f_power,r_power,~]=powerModel(x,y);
        [f_growthRate,r_growthRate,~]=growthRateModel(x,y);
        r=max([r_linear ,r_exp,r_power]);
        if (r==r_power)
            f=f_power;
            figure(1);
            plot(x,y,'x',x,f,'-');
            title('Power Model');
        elseif (r==r_exp)
            f=f_exp;
            figure(1);
            plot(x,y,'x',x,f,'-');
            title('Exponential Model');
        elseif(r==r_growthRate)
            f=f_growthRate;
            figure(1);
            plot(x,y,'x',x,f,'-');
            title('Growth Rate Model')
        else
            f=f_linear;
            figure(1);
            plot(x,y,'x',x,f,'-');
            title('Linear Model')
        end