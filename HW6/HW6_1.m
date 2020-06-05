%Prob. 1(b)
x = [1, 2, 3, 4, 5, 6, 7, 8];
N = 8;
X = fft(x);
x_idft = IDFT(X, N);
x_idft