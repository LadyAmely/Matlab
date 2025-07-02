clear variables;
clc;
close all;

% Zadanie 1
%
% Zdefiniuj zmienne A, b, Aeq, beq, lb, ub oraz funkcję ograniczenia tak, 
% aby funkcja fmincon (jej wywołanie poniżej) znalazła minimum 
% wewnątrz obszaru pokazanego na rysunku 
% (funkcji funkcja_celu oraz punktu startowego x0 nie musisz definiować):
%
% [x, y] = fmincon(@funkcja_celu, x0, A, b, Aeq, beq, lb, ub, @ograniczenia);

ub=[1,0.5];
lb=[-1,-1];
Aeq=[];
beq=[];
A=[];
b=[];

function [c,ceq] = ograniczenia(x)
    
    c1=(x(1)+0.5).^2+(x(2)-1).^2-0.5^2;
    c2=(x(1)-0.5)^2+(x(2)-1)^2-0.5^2;
    c=[c1;c2];
    ceq=[];
    
end