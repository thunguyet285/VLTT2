clear all; close all; clc;
% Note : phai dat thoi gian la dang bien syms
N0=1e4; N=ones(1,N0); T=3.8; t=1:15; p=log(2)/T;
for k=1:length(t)
    r=rand(1,N0);
    N=N&(r>p);
    n(k)=sum(N); 
end
plot([0 t],[N0 n]); hold on;;
syms t;Nt=N0*exp(-p*t)
fplot(Nt,[0 15],'r'); hold off; shg
