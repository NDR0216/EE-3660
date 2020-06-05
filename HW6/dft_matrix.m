function W = dft_matrix(N)
k = 0:N-1;
n = 0:N-1;
W = exp(-i*2*pi/N*k'*n);
end

