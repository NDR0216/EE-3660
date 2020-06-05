function X = fftdifr2(x)
% DIT Radix-2 FFT Algorithm
N=length(x); nu=log2(N);

for m=nu:-1:1
    L=2^m;
    L2=L/2;
    for ir=1:L2
        W=exp(-1i*2*pi*(ir-1)/L);
        for it=ir:L:N
            ib=it+L2;
            
            temp = x(ib); 
            x(ib) = (x(it)-temp)*W;
            x(it) = x(it)+temp;
        end
    end
end

X = bitrevorder(x);