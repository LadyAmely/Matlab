clear variables;
clc;
close all;

% Task 3:
% Two vectors x and y are given, where y = f(x).
% The function f is a polynomial of degree n.
% Write a program that determines the degree n, assuming that the polynomial
% of degree n passes exactly through the given points.

x = [0 1 2 3];
y = [1 2 5 10];

for n=0:length(x)-1
    p=polyfit(x,y,n);
    y_fit=polyval(p,x);
    errors=abs(y-y_fit);
    if max(errors) < 1e-10
        disp(['Stopień wielomianu: ', num2str(n)]);
        break;
    end
end