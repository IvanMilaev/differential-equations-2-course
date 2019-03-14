function [X, Y] = RungeKuttaMerson(a,b,h,y0)
Y = []; % array of y values
y = y0; % initial value of y
X = a:h:b; % array of x values
h3 = h/3;
    for x = a:h:b
        k1=h3*f(x,y);
        k2=h3*f(x+h3,y+k1);
        k3=h*f(x+h3,y+k1/2+k2/2);
        k4=k1+4*h3*f(x+h/2,y+0.375*(k1+k3));
        k5=h3*f(x+h,y+1.5*(k4-k3));
        delta_y=(k4+k5)/2;
        y = y + delta_y;
        Y = [Y y]; 
        disp([x, y])
    end
end