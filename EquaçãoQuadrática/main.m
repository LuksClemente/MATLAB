clc
clear
close all

a = 2;
b = 3;
c = 5;
[x1, x2] = eq2(a, b, c);

disp('Esse programa resolve a equação quadrática: ');
disp('ax^2 + bx + c = 0')
disp('')
disp('Os coeficientes são: ')
disp(a)
disp(b)
disp(c)
disp('')
disp('E as raízes são: ');
disp(x1)
disp(x2)
