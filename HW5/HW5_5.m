%Prob. 5
f = [0 0.4 0.4 1];
m = [1 1 0 0];
b = fir2(32, f, m);
[h, w] = freqz(b, 1);
hdb = mag2db(abs(h));
L = length(w);
LP = [ones(uint16(0.4*L), 1); zeros(L-uint16(0.4*L), 1)];
dh = abs(h)-LP;

figure
subplot(2, 2, 1)
stem(b)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
plot(w/pi, hdb)
title('Magnitude Response (dB)')
xlabel('\omega')
ylabel('Decibels')

subplot(2, 2, 3)
plot(w/pi, dh)
axis([0 1 -0.0032 0.0032])
title('Approximation Error')
xlabel('\omega')
ylabel('Amplitude')

subplot(2, 2, 4)
yyaxis left
plot(w/pi, hdb)
axis([0 1 -0.08 0.03])
title('Zoom of Magnitude Response (dB)')
xlabel('\omega')
ylabel('Passband dB')
yyaxis right
plot(w/pi, hdb)
axis([0 1 -100 -50])
ylabel('Stopband dB')