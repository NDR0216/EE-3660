function X = dftdirect_m(x,W)
% Direct computation of the DFT
N=length(x); Q=2*pi/N;
for k=1:N
    S=0;
    for n=1:N
        S=S+W(k,n)*x(n);
    end
    X(k)=S;
end