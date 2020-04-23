function c = dtfs0(x)
N = length(x);
n = 0:N-1;
c = zeros(1, N);
    for k = 1:N
        c(k) = 1/N*sum(x.*exp(-i*2*pi/N*k*n));
    end
end