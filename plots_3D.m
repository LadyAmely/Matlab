clear variables;
clc;
close all;

x=linspace(-pi,pi,31);
y=linspace(-pi/2,pi/2,31);
z=sin(x).*cos(y);

figure;

% 3D line plot using vectors x, y, z (may cause error due to size mismatch)
subplot(2,2,1);
plot3(x, y, z);

[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);

% 3D line plot using meshgrid inputs (X, Y, Z)
subplot(2,2,2);
plot3(X, Y, Z);

% 3D mesh surface plot
subplot(2,2,3);
mesh(x, y, Z);

saveas(gcf, 'plots_3D.png');
