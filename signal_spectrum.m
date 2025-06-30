clear variables;
clc;
close all;

fs=8192; %częstotliwość próbkowania
L=8192; %długość sygnału
t=(0:L-1)/fs; % wektor czasu

y1=2*sin(2*pi*200*t); %sinusoida o częstotliwości 200 Hz i amplitudzie 2
y2=sin(2*pi*600*t); %sinusoida o częstotliwości 600 Hz i amplitudzie 1

plot(t(t<=0.015),[y1(t<=0.015);y2(t<=0.015)]);
y=y1+y2;

figure;
plot(t(t<=0.015),y(t<=0.015));

n=2*nextpow2(L); %długość transformaty Fouriera
s=fft(y,n)/L; %widmo częśtotliwościowe sygnału
f=fs/2*linspace(0,1,n/2+1); %wektor częstotliwości

figure;
bar(f,2*abs(s(1:n/2+1)))
