function [X1,X2] = tworealDFTs(x1,x2)
N = length(x1);
x = x1 + i*x2;
X = fft(x);
X_bar = conj(X);
Xcce = zeros(1, N);
Xcco = zeros(1, N);

for k = 1:N
    if k == 1
        Xcce(k) = 1/2*( X(k)+X_bar(-k+2) );
        Xcco(k) = 1/2*( X(k)-X_bar(-k+2) );
    else
        Xcce(k) = 1/2*( X(k)+X_bar(-k+N+2) );
        Xcco(k) = 1/2*( X(k)-X_bar(-k+N+2) );
    end

X1 = Xcce;
X2 = Xcco/i;
end

