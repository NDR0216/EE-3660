function x = IDFT(X,N)
Xflip = [X(1) X(N:-1:2)];
x = 1/N * fft(Xflip);
end

