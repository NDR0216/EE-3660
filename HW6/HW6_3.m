%Prob. 3(b)
x = [0,1,2,2,3,3,3,4];
X_alt = fftalt8(x);
X = fft(x);
dX = abs(X_alt)-abs(X);

figure
stem(dX)
title('difference between fftalt8 and fft')
xlabel('k')
ylabel('|\DeltaX|')

%Prob. 3(c)
disp("fftalt8")
tic
fftalt8(x);
toc

disp("fftditr2")
tic
fftditr2(x);
toc