clear variables;
clc;
close all;


% Zadanie 1:
% Znajdź minimum funkcji danej wzorem:
%     f(x1, x2) = sin(x1) + x1 + (3/2) * x2^2
% przy ograniczeniach:
%     -2*x1 - 4*x2 <= 5
%      5*x1 - 3*x2 >= 7
%      x2 <= 5
%      x1 >= 9

f=@(x)sin(x(1))+x(1)+1.5*(x(2)^2);

A=[-2,-4;
    -5,3];
b=[5;-7];
Aeq=[];
beq=[];
lb=[9,-Inf];
ub=[Inf,5];
x0=[9,5];

[x_min,f_min]=fmincon(f,x0,A,b,Aeq,beq,lb,ub);

disp('Minimum point:');
disp(x_min);
disp('Function value at minimum:');
disp(f_min);
