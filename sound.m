clear variables;
clc;
close all;

fs=8192;
L=8192;

t=(0:L-1)/fs;
y=sin(2*pi*697*t) + sin(2*pi*1209*t);
sound(y,fs);
n=2^nextpow2(L);
s=fft(y,n)/L;
f=fs/2*linspace(0,1,n/2+1);
figure;
bar(f,2*abs(s(1:n/2+1)));
