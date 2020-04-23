%Prob. 2(c)
n = 0:49;
x1 = 0.9.^n;
x2 = 1 - 0.8.^n;
[X1,X2] = tworealDFTs(x1,x2);
X1_dft = fft(x1);
X2_dft = fft(x2);

dX1 = X1 - X1_dft;
dX2 = X2 - X2_dft;

figure
stem(n, abs(X1))
title('X1')
xlabel('k')
ylabel('|X1|')

figure
stem(n, abs(X2))
title('X2')
xlabel('k')
ylabel('|X2|')

figure
stem(n, abs(dX1))
title('diff of tworealDFTs and fft (X1)')
xlabel('k')
ylabel('|X1|')

figure
stem(n, abs(dX2))
title('diff of tworealDFTs and fft (X2)')
xlabel('k')
ylabel('|X2|')