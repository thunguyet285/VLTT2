clc; clear all; close all;
f=@(x) (cos(x)./sqrt(1+x.^4))+2;
N=1e6; a=2; b=10; x=a+(b-a)*rand(1,N); 
Fm=mean(f(x));
I=Fm*(b-a), Iref=quad(f,a,b)
