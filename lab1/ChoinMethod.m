function [X, Y] = ChoinMethod(a,b,h,y0)

Y = []; % array of y values
y = y0; % initial value of y 
X = a:h:b; % array of x values
    for x = a:h:b
        y = y + h*f(x+h/2,y+(h/2)*f(x,y));
        Y = [Y y]; 
        disp([x, y])
    end
end

