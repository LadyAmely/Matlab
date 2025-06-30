clear variables;
clc;
close all;

% Task 2:
% Given two vectors x and y containing the coordinates of points on a plane.
% All points lie on a straight line y = a*x + b, except for one.
% Write a program that outputs the coordinates of the point 
% that does not lie on the line.

x=[1,2,3];
y=[1,1,1];

p=polyfit(x,y,1);
y_fit=polyval(p,x);

errors=abs(y-y_fit);
[~,idx]=max(errors);
disp(['Punkt nieleżący na prostej: (', num2str(x(idx)), ', ', num2str(y(idx)), ')']);