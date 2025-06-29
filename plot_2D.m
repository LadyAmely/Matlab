clear variables;
clc;
close all;

x = rand(1, 1000);
figure;
hist(x);                         % Histogram of 1000 uniformly distributed random numbers
saveas(gcf, 'histogram.png');

X = [1 2 3 4];
figure;
pie(X);                          % 2D pie chart of values in vector X
saveas(gcf, 'pie_x.png');

figure;
pie3(X);                         % 3D pie chart of values in vector X
saveas(gcf, 'pie3_x.png');
