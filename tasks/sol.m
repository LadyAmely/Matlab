clear variables;
clc;
close all;

% Zadanie 2
% 
% Rozwiąż numerycznie równanie różniczkowe:
%     5*y'' + 2*y' - 7*y = f(t),
%
% gdzie:
%     f(t) =  2   dla t < 3
%            -1   dla t >= 3
%
% Warunki początkowe:
%     y(0) = 9
%     y'(0) = -1
%
% Zakres czasowy:
%     t ∈ [0, 10]
%
% Narysuj wykres funkcji y(t).

T=[0,10];
y0=[9,-1];

function dydt = sol(t,y)

   y1=y(1);
   y2=y(2);

   if t<3
       f=2;
   else
       f=-1;
   end

   dy1=y2;
   dy2=(f+7*y1-2*y2)/5;

   dydt=[dy1;dy2];
end

[t,y]=ode45(@sol,T,y0);

figure;
plot(t,y(:,1),'LineWidth',2);
xlabel('t');
ylabel('y(t)');
grid on;

