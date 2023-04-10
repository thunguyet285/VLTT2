function tichphan = Moute(f,g,a,b,c,d)
syms x y;
N=1e6;
S=0;
for i = 1:N
    x = a + (b-a)*rand();% tra ve 1 so thuc : random number in [a,b]
    y = c +(d-c)*rand(); % random number in [c,d]
    if g(x,y) <= 0 % checking whether  random point inside Omega
        S = S +f(x,y);
    end
end
tichphan = S*(b-a)*(d-c)/N;
fprintf('Tich phan = %f',tichphan);
end