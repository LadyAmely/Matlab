clear variables;
clc;
close all;

% Task:
% The vector y contains the values of a signal sampled at 8192 Hz, 
% consisting of two harmonic components with frequencies of 1000 Hz and 2000 Hz.
% Extract the individual signal components corresponding to these frequencies 
% and save them into vectors y1 and y2, respectively.

fs=8192;
L=8192;
t=(0:L-1)/fs;
y=sin(2*pi*1000*t)+sin(2*pi*2000*t);

[l1,m1]=butter(12,[950 1050]/(fs/2),'bandpass');
[l2,m2]=butter(12,[1950 2050]/(fs/2),'bandpass');

y1=filter(l1,m1,y);
y2=filter(l2,m2,y);