clear variables;
clc;
close all;

x = linspace(-pi, pi, 101);         % Generate 101 points evenly spaced from -π to π
y1 = sin(x);                        % Compute sine values for each x
y2 = 2 * cos(2 * x);                % Compute values for 2*cos(2x)

figure;                             % Create a new figure window
title('Plot of the sine function'); % Add a title to the plot
xlabel('x');                        % Label the x-axis
ylabel('sin(x)');                   % Label the y-axis
legend('sin(x)', '2cos(2x)');       % Add a legend for both plotted functions

plot(x, y1);                        % Plot the sine function
hold on;                            % Keep the current plot for overlaying the next one
plot(x, y2);                        % Plot the 2*cos(2x) function on the same axes

saveas(gcf, 'sin_plot.png');        % Save the figure as a PNG file
