clear variables;
clc;
close all;

% Write a program that plots the function
% f(x)=1/1-x over the interval from –1 to 1 with a step size of 0.05.
% Use an anonymous function, set the figure background color to white, the axes background color to gray, and the plot line color to white with a line width of 5.
% Finally, close all open figure windows.

x=-1:0.05:1;
f=@(x)1./(1-x);
y=f(x);

figure;
axes('Color',[0.5,0.5,0.5], 'FontSize', 16, 'NextPlot','replacechildren')
plot(x,y,'LineWidth',5);
title('figure 1');
xlabel('x');
ylabel('y');