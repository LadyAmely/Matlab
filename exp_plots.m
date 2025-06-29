clear variables;
clc;
close all;

x=0:0.1:6*pi;
y=exp(1i*x);

figure;
subplot(2,1,1);
plot(x,y,'b-',x,real(y),'g--',x,imag(y),'r-', 'LineWidth', 2);
title('plot e^i*x');
xlabel('x');
ylabel('y');
legend('f(x)','RE','IM');

subplot(2,1,2);
plot(x,abs(y),'g-',x,angle(y),'r--', 'LineWidth',2);
xlabel('x');
ylabel('y');
title('Magnitude |y|  & Phase angle');

saveas(gcf,'graphs_exp_functions.png');


