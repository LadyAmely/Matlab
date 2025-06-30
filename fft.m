clear variables;
clc;
close all;

fs=8192;
L=8192;
t=(0:L-1)/fs;

y1=2*sin(2*pi*200*t);
y2=sin(2*pi*600*t);
y=y1+y2;


plot(t(t<=0.025),y(t<=0.025));

n=2^nextpow2(L);
s1=fft(y,n);
s2=ifft(s1,n);

figure;
plot(t(t<=0.025),s2(t<=0.025))
