clear variables;
clc;
close all;

x=linspace(-1,1,50);
y=linspace(-1,1,50);
[X,Y]=meshgrid(x,y);
z=X.^2+Y.^2-cos(2.5*pi*X)-cos(2.5*pi*y)+2;

figure;
surf(x,y,z,'EdgeColor','none');
colormap('turbo');
shading interp;
lighting phong;
colorbar;
view(-30,60);

set(gca,'FontSize', 12);
set(gcf,'Color',[1 1 1]);
xlabel('x');
ylabel('y');
zlabel('z');
saveas(gcf,'fig1.png');

f=@(X)X(1,:).^2+X(2,:).^2-cos(2.5*pi*X(1,:))-cos(2.5*pi*X(2,:))+2;
x=linspace(-1,1,30);
y=linspace(-1,1,30);

X=[repmat(x,1,length(y)); reshape(repmat(y,length(x),1),1,[])];
Y=f(X);

SSN=fitnet([10,5]);
SSN=train(SSN,X,Y);
view(SSN);

hold on;
figure;
Y_SSN=sim(SSN,X);
Y_SSN=reshape(Y_SSN,30,30);
surf(x,y,Y_SSN,'EdgeColor','none');
colormap('turbo');
colorbar;
shading interp;
lighting phong;
view(-30,60);
xlabel('x');
ylabel('y');
zlabel('z');
title(['N=',num2str(30)]);
saveas(gcf, 'fig2.png');