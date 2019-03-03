clear all; clc;
a = 0;
b = 1;
h = 0.1;
y0 = 0;
[general_solution, cauchy_task] = solveEquation();
disp(cauchy_task());
[X0,Y0] = cauchyTask(a,b,h);
[X1,Y1] = EulerMethod(a,b,h,y0);
[X2,Y2] = EulerModifiedMethod(a,b,h,y0);
plot(X0, Y0, X1, Y1, X2, Y2)
xlabel('x')
ylabel('y')
