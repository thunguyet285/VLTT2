clc; clear all; close all;
f=@(x,y,z) ((1)./(sqrt(x.^2+y.^2+(z-2).^2)));
N=1e6; a=-1; b=1; c=-1.5; d=1.5; e=-1; g=1; 
x=a+(b-a)*rand(1,N);
y=c+(d-c)*rand(1,N);
z=e+(g-e)*rand(1,N);
Fm=mean(f(x,y,z));
I=Fm*(b-a)*(d-c)*(g-e),
Iref=triplequad(f,a,b,c,d,e,g)
