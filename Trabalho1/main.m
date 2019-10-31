clc;
clear;
close all;

tol = 1.0e-4;
maxiter = input("Digite um numero maximo de iteracoes: ");
x0 = input("Determine o chute inicial: ");
F = @(x)[x(1)^2 + x(2)^2 - 2; x(1)^2 - x(2)^2 - 1];
DF = @(x)[2*x(1), 2*x(2); 2*x(1), -2*x(2)];
x = NewtonRaphson(F, DF, x0, tol, maxiter);
