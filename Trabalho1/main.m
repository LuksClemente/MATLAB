clc;
clear;
close all;

tol = 1.0e-2;
maxiter = 100;
x0 = [2; 2];
F = @(x)[x(1)^2 + x(2)^2 - 2; x(1)^2 - x(2)^2 - 1];
DF = @(x)[2*x(1) 2*x(2); 2*x(1) -2*x(2)];
x = NewtonRaphson(F, DF, x0, tol, maxiter);
