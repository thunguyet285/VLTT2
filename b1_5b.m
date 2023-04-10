clc; clear all; close all;
syms x y z;
f = @(x,y,z) ((1)./(sqrt(x.^2+y.^2+(z-2).^2)));
N=1e6; a=-1; b=1; c=-1.5; d=1.5; e=-1; g=1; 
S=0;
for i = 1:N
    x = a + (b-a)*rand();% random number in [a,b]
    y = c +(d-c)*rand(); % random number in [c,d]
    z = e + (g-e)*rand();
    if  (x^2 + y^2 <= 1 ) && (z >= -1) && (z <= 1 ) % checking whether  random point inside Omega
        S = S +f(x,y,z);
    end
end
S
tichphan = S*(b-a)*(d-c)*(g-e)/N;
fprintf('Tich phan = %f',tichphan);

% Iref=triplequad(f,a,b,c,d,e,g)  % cong thuc tinh tich phan