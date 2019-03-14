function [X, Y] = RungeKutta4(a,b,h,y0)
Y = []; % array of y values
y = y0; % initial value of y
X = a:h:b; % array of x values
    for x = a:h:b
        k1=f(x,y);
        k2=f(x+h/2,y+h*k1/2);
        k3=f(x+h/2,y+h*k2/2);
        k4=f(x+h,y+h*k3);
        delta_y=(k1+2*k2+2*k3+k4)*h/6;
        y = y + delta_y;
        Y = [Y y]; 
        disp([x, y])
    end
end