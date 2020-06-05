%Prob. 2(b)
N = 128;
x = randn(1,N) + 1j*randn(1,N);
W = dft_matrix(N);
X_dftdirect = dftdirect_m(x, W);
X_fft = fft(x);
dX = abs(X_dftdirect)-abs(X_fft);

figure
stem(dX)
title('difference of dftdirect\_m and fft')
ylabel('|\DeltaX|')

N = 128;
x = randn(1,N) + 1j*randn(1,N);
W1 = dft_matrix(N);

disp("N = 128, dftdirect")
tic
dftdirect(x);
toc

disp("N = 128, dftdirect_m")
tic
dftdirect_m(x, W1);
toc

N = 256;
x = randn(1,N) + 1j*randn(1,N);
W2 = dft_matrix(N);

disp("N = 256, dftdirect")
tic
dftdirect(x);
toc

disp("N = 256, dftdirect_m")
tic
dftdirect_m(x, W2);
toc

N = 512;
x = randn(1,N) + 1j*randn(1,N);
W3 = dft_matrix(N);

disp("N = 512, dftdirect")
tic
dftdirect(x);
toc

disp("N = 512, dftdirect_m")
tic
dftdirect_m(x, W3);
toc

N = 1024;
x = randn(1,N) + 1j*randn(1,N);
W4 = dft_matrix(N);

disp("N = 1024, dftdirect")
tic
dftdirect(x);
toc

disp("N = 1024, dftdirect_m")
tic
dftdirect_m(x, W4);
toc

%Prob. 2(c)
N = 128;
x = randn(1,N) + 1j*randn(1,N);
W = dft_matrix(N);
X_fftrecur = fftrecur_m(x, W);
X_fft = fft(x);
dX = abs(X_fftrecur')-abs(X_fft);

figure
stem(dX)
title('difference of fftrecur\_m and fft')
ylabel('|\DeltaX|')

N = 128;
x = randn(1,N) + 1j*randn(1,N);
W1 = dft_matrix(N);

disp("N = 128, fftrecur")
tic
fftrecur(x);
toc

disp("N = 128, fftrecur_m")
tic
fftrecur_m(x, W1);
toc

N = 256;
x = randn(1,N) + 1j*randn(1,N);
W2 = dft_matrix(N);

disp("N = 256, fftrecur")
tic
fftrecur(x);
toc

disp("N = 256, fftrecur_m")
tic
fftrecur_m(x, W2);
toc

N = 512;
x = randn(1,N) + 1j*randn(1,N);
W3 = dft_matrix(N);

disp("N = 512, fftrecur")
tic
fftrecur(x);
toc

disp("N = 512, fftrecur_m")
tic
fftrecur_m(x, W3);
toc

N = 1024;
x = randn(1,N) + 1j*randn(1,N);
W4 = dft_matrix(N);

disp("N = 1024, fftrecur")
tic
fftrecur(x);
toc

disp("N = 1024, fftrecur_m")
tic
fftrecur_m(x, W4);
toc