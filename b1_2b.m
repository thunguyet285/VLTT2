clc; clear all; close all;
f=@(x) (cos(x)./sqrt(1+x.^4))+0.05;
N=1e6; a=2; b=10; F=1;G=-1; %fplot(f,[a b])
x=a+(b-a)*rand(1,N); y=G+(F-G)*rand(1,N);
n=0;
for k=1:N
    if (y(k)<=f(x(k)))&& y(k)>=0
        n=n+1; %Hit
    end
    if (y(k)>=f(x(k)))&& y(k)<0
        n=n-1; %Hit : CHU Y O DAY do can tich phan duong 
    end
end
I=(F-G)*(b-a)*n/N, Iref=quad(f,a,b)