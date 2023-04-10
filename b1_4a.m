clc; clear all; close all;
f=@(x,y) ((y.^3).*exp(y))./(x.^2+y.^2);
N=1e6; a=1; b=2; c=3; d=4; Z = 220;
x=a+(b-a)*rand(1,N);
y=c+(d-c)*rand(1,N);
z=Z*rand(1,N);
n=0;
for k=1:N
    if (z(k)<=f(x(k),y(k)))
        n=n+1; %Hit
    end
    
end
A=n/N;
I=Z*(b-a)*(d-c)*n/N
Iref=dblquad(f,a,b,c,d) % cong thuc tinh tich phan 
%Moute(@(x,y) ((y.^3).*exp(y))./(x.^2+y.^2), @(x,y) (x-0.5).^2 +y.^2 -1 ,1,2,3,4
