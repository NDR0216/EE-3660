%Prob. 8(b)
k = 0:32;
H = [1 1 1 0.5 zeros(1,26) 0.5 1 1] .* exp(-i*32*pi/33*k);
h = ifft(H);

[G,sos] = firdf2fs(h)