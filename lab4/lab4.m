clear all 
clc

[x1, t1] = miln(0, 1, 100, 0);   


t2 = 0:0.01:1;   
x2 = 4 * exp(-t2) +3*t2 - 3; 
plot(t1, x1, 'b-.', t2, x2, 'r--')
legend('by Miln method', 'exact solution')
