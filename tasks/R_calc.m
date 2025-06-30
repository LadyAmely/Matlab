clear variables;
clc;
close all;


w=[1 2 4];
x=4;

f1=polyder(w);
df=polyval(f1,x);
f2=polyder(f1);
d2f=polyval(f2,x);

R=abs(((1+df.^2).^(3/2))/d2f)
