clear variables;
clc;
close all;

x=-1:0.1:1;
y=x.^2;
SSN=fitnet(5);
view(SSN);

SSN=train(SSN,x,y);
view(SSN);

xx=-1:0.1:1;
yy=xx.^2;
yy_SSN=sim(SSN,xx);
plot(x,y,'r',xx,yy_SSN);
legend({'Punkty','Fun','SSN'});
saveas(gcf, 'SSN_graph.png')