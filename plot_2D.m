clear variables;
clc;
close all;

x=rand(1,1000);
figure;
hist(x);
saveas(gcf, 'histogram.png');

X=[1 2 3 4];
figure;
pie(X);
saveas(gcf, 'pie_x.png');

figure;
pie3(X);
saveas(gcf, 'pie3_x.png');