clear variables;
clc;
close all;

x=0:0.1:6*pi;
y=exp(1i*x);

figure;
plot3(x,real(y),imag(y),'r--', 'LineWidth',1);
grid on;
title('3D Complex Spiral: e^{ix}', 'FontSize',14);
xlabel('x');
ylabel('Re(y)');
zlabel('Im(y)');
set(gca, 'FontSize', 8);
view(3);
camlight headlight;
lighting goraud;
