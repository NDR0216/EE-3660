%Prob. 4(b)
for v = 2:10
    N = 2^v;
    x = randn(1,N) + 1j*randn(1,N);
    X = fft(x);
    X_dif = fftdifr2(x);
    dX = abs(X_dif)-abs(X);
    
    fprintf("v = %d\n", v);
    figure
    stem(dX)
    title('difference between fftdifr2 and fft')
    ylabel('|\DeltaX|')
end