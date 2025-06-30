
% Task 1:
% Given two vectors x and y (where y = F(x)).
% Create a neural network with two hidden layers (with 10 and 5 neurons, respectively)
% and train it to learn the function f.
% Calculate the approximation error and plot the graph of the actual function 
% over the range <x(1) to x(end)> as well as the data points (x, y).

clear variables;
clc;
close all;

x=-1:0.1:1;
F=@(x)sin(2*x)+1;
y=F(x);

SSN=fitnet([10,5]);
view(SSN);
SSN=train(SSN,x,y);
view(SSN);

xx=-1:0.1:1;
yy=F(xx);
yy_SSN=sim(SSN,xx);

MSE=mean((yy-yy_SSN).^2);
disp(['MSE: ', num2str(MSE)]);

figure;
plot(x, y, 'r.-', 'LineWidth', 2, 'MarkerSize', 15);  
hold on;
plot(xx,yy_SSN,'b--','LineWidth',2);
grid on;
xlabel('x');
ylabel('y');
legend('Rzeczywista funkcja','Aproksymacja sieci');

