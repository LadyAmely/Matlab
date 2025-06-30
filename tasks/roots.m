clear variables;
clc;
close all;

l1=[1 2 3];
m1=[1 4 1];
x=8;
dl1=polyder(l1);
dm1=polyder(m1);

l=conv(dl1,m1)-conv(dm1,l1);
r=roots(l);
