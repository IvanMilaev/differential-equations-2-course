function [general_solution, cauchy_task] = solveEquation()
syms y(x);
ode = exp(y)*(1+x^2)*diff(y,x) - 2*x*(1+exp(y)) == 0;
cond = y(0) == 0;
general_solution = dsolve(ode);
cauchy_task = dsolve(ode,cond);
end

