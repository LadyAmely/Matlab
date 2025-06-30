clear variables;
clc;
close all;

fs=8192;
L=8192;
t=(0:L-1)/fs;
n=2^nextpow2(L);

y=2*sin(2*pi*200*t)+sin(2*pi*600*t);
s=fft(y,n)/L;
f=fs/2*linspace(0,1,n/2+1);

[l1,m1]=butter(12,2*400/fs,'low');
y1=filter(l1,m1,y);
[h,theta]=freqz(l1,m1);

figure;
bar(f,2*abs(s(1:n/2+1)));
hold on;
plot(theta*fs/(2*pi),abs(h),'r');

