function [X, Y] = EulerMethod(a,b,h,y0)
% a = 0;
% b = 1;
% h = 0.1;
Y = []; % array of y values
y = y0; % initial value of y 
X = a:h:b; % array of x values
    for x = a:h:b
        y = y + h*f(x,y);
        Y = [Y y]; 
        disp([x, y])
    end
end