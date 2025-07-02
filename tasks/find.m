clear variables;
clc;
close all;


% Zadanie 2:
% Dana jest macierz A = randi(10, n); oraz wektor w = randi(10, n, 1);
% gdzie n to dowolna dodatnia liczba.
% Bez użycia pętli (niekoniecznie w jednej linii) podaj numery kolumn
% w macierzy A, które są identyczne jak wektor w.

n=2;
A=randi(10,n);
w=randi(10,n,1);

idx=find(all(A==w,1));