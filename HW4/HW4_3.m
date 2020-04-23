%Prob. 3(b)
x1 = [1 2 3 4 5]';
x2 = [2 -1 1 -1 0]';
y1 = circonv(x1, x2);

figure
stem(y1)
title('circonv')
xlabel('n')
ylabel('y')

%Prob. 3(c)
X1 = fft(x1);
X2 = fft(x2);
Y2 = X1.*X2;
y2 = ifft(Y2);

figure
stem(y2)
title('DFT & IDFT')
xlabel('n')
ylabel('y')