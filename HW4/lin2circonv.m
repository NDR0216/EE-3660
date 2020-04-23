function y = lin2circonv(x,h)
N1 = length(x);
N2 = length(h);
N = max([N1, N2]);
L = N1+N2-1;
y_lin = conv(x, h);

y = zeros(1, N);
for n = 1:L
    if n <= N
        y(n) = y(n) + y_lin(n);
    else
        y(n-N) = y(n-N) + y_lin(n);
    end
end

