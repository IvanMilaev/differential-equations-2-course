function [X,Y] = cauchyTask(a,b,h)
Y=[];
X = a:h:b; % array of x values
    for x = a:h:b
        y = log(2*x^2 + 1);
        Y = [Y y]; 
        disp([x, y])
    end
end
