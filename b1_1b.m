% Topic 1 : bai 1b 
clc; clear all; close all;
T=3.8; p=0.0015; % sx hat bi phan ra trong mot thoi gian
N=1e4; % so hat ban dau  
Nt=1e5;  %
for i=1:Nt
    r=rand(1,N);
    x(i)=sum(r<=p); % tong so hat nhan bi phan ra tai x(i)
end 
nn=min(x):1:max(x);  % liet ke so luong hat bi phan ra, nhay tu min den max tang 1 don vi
nx=hist(x,nn); % so luong tan suat cac gia x theo tung gia tri cua list nn
fprintf('%d %d %d',length(x),length(nn),length(nx));
bar(nn,nx./Nt); % ve bieu do cot bieu thi cac tan suat
hold on; % ve tiep do thi khac tren cac truc do
k=min(x):max(x); % tu min den max
lamda=p*N;
Poisson=exp(-lamda).*(lamda.^k)./factorial(k); 
plot(k,Poisson,'r'); % ve bieu do poisson theo cac gia tri bi so luong hat bi phan ra
