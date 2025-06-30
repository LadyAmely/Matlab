clear variables;
clc;
close all;

fs=8192;
L=8192;
t=(0:L-1)/fs;

y=2*sin(2*pi*200*t) + randn(size(t));

figure;
plot(t(t<=0.05), y(t<=0.05));

n=2^nextpow2(L);
s=fft(y,n)/L;
f=fs/2*linspace(0,1,n/2+1);

figure;
bar(f,2*abs(s(1:n/2+1)));

[l1,m1]=butter(12,2*180/fs,'high');
[l2,m2]=butter(12,2*220/fs,'low');

y1=filter(l1,m1,y);
y2=filter(l2,m2,y1);

figure;
plot(t(t<=0.05), y2(t<=0.05));
