clc; clear all; close all;
f=@(x) (cos(x)./sqrt(1+x.^4))+2;
N=1e6; 
a=2;b=10; 
F=3; %fplot(f,[2 10])
x=a+(b-a)*rand(1,N); y=F*rand(1,N);
y
n=0;
for k=1:N
     if (y(k)<=f(x(k)))
        n=n+1; %Hit
     end
end
I=F*(b-a)*n/N
Iref=quad(f,a,b) % ham tinh tich phan cu pt f trong doan tu a den b 