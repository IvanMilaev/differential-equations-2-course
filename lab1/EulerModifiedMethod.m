function [X, Y] = EulerModifiedMethod(a,b,h,y0)

Y = []; % array of y values
y = y0; % initial value of y (x=-1/2)
X = a:h:b; % array of x values
    for x = a:h:b
        y = y + h*f(x+h/2,y+(h/2)*f(x,y));
        Y = [Y y]; 
        disp([x, y])
    end
end
