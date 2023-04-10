clc; clear all; close all;
f=@(x,y) ((y.^3).*exp(y))./(x.^2+y.^2);
N=1e6; a=1; b=2; c=3; d=4; 
x=a+(b-a)*rand(1,N); y=c+(d-c)*rand(1,N);
Fm=mean(f(x,y));
I=Fm*(b-a)*(d-c), Iref=dblquad(f,a,b,c,d)
