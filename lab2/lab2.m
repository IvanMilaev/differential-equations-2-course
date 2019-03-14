clear all; clc;
a=pi/4;
b=pi/3;
h = 0.01;
y0 = 1;
[X0,Y0] = ode23('f',[a b],1)
[X,Y] = ode45('f',[a b],1)
[X1,Y1] = RungeKutta4(a,b,h,y0);
[X2,Y2] = RungeKuttaMerson(a,b,h,y0);
plot(X0, Y0,'-.', X, Y,'--', X1, Y1, X2, Y2)
xlabel('x')
ylabel('y')

