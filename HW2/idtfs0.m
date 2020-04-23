function x = idtfs0(c)
N = length(c);
k = 0:N-1;
x = zeros(1, N);
    for n = 1:N
        x(n) = sum(c.*exp(i*2*pi/N*k*n));
    end
end
