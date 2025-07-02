clear variables;
clc;
close all;

% Zadanie 2:
% Rozwiązywany jest układ czterech równań różniczkowych I rzędu.
% Napisz funkcję zdarzenia, która definiuje dwa zdarzenia:
%
% 1) Pierwsze zdarzenie zachodzi, gdy funkcja y1 równa się sumie funkcji y2 oraz y3
%    (zdarzenie NIE kończy obliczeń).
%
% 2) Drugie zdarzenie zachodzi, gdy wartość funkcji y4 stanie się większa od funkcji y1
%    (zdarzenie KOŃCZY obliczenia).


function [value, isterminal, direction] = events(t,y)
    value(1)=y(1)-(y(2)+y(3));
    isterminal(1)=0;
    direction(1)=0;

    value(2)=y(4)-y(1);
    isterminal(2)=1;
    direction(2)=1;
end

options=odeset('Events', @events);
[t,y]=ode45(@f, t0, y0);
