clear variables;
clc;
close all;

p=[1,1,1];
a=-2:0.1:2;
b=-2:0.1:2;

figure('Color',[0,0,0]);
[A,B]=meshgrid(a,b);
X=A+1i*B;
Y=polyval(p,X);

surf(A,B,abs(Y),'EdgeColor', 'none');
colormap('turbo');
colorbar;
shading interp;
lighting phong;
view(3);

title('|f(x)| for f(x) = x^2 + x + 1 in ℂ', 'FontSize', 16, 'Color', 'w');
xlabel('Re(x)', 'Color', 'w');
ylabel('Im(x)', 'Color', 'w');
zlabel('|f(x)|', 'Color', 'w');

set(gca, 'Color', [0.1 0.1 0.1], 'XColor', 'w', 'YColor', 'w', 'ZColor', 'w','FontSize', 8);

saveas(gcf,'surf_3D.png')