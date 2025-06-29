clear variables;
clc;
close all;

x = linspace(-pi, pi, 101);        % Generate 101 evenly spaced values from -π to π
y = sin(x);                        % Compute the sine of each x value
figure;                            % Create a new figure window
plot(x, y);                        % Plot the sine function
title('Plot of the sine function');% Add a title to the plot
xlabel('x');                       % Label the x-axis
ylabel('sin(x)');                  % Label the y-axis
saveas(gcf, 'sin_plot.png');       % Save the plot as a PNG image file
