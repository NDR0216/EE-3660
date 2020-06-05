%Prob. 6(a)
f = [0 0.4 0.4 1];
m = [0 0 1 1];
M = 30;
b1 = fir2(M, f, m, kaiser(M+1,4.53));
[h1, w1] = freqz(b1, 1);
hdb1 = mag2db(abs(h1));
L = length(w1);
LP = [zeros(uint16(0.4*L), 1); ones(L-uint16(0.4*L), 1)];
dh1 = abs(h1)-LP;

figure
subplot(2, 2, 1)
stem(b1)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
plot(w1/pi, hdb1)
title('Magnitude Response (dB)')
xlabel('\omega')
ylabel('Decibels')

subplot(2, 2, 3)
plot(w1/pi, dh1)
axis([0 1 -0.0032 0.0032])
title('Approximation Error')
xlabel('\omega')
ylabel('Amplitude')

subplot(2, 2, 4)
yyaxis left
plot(w1/pi, hdb1)
axis([0 1 -100 -50])
title('Zoom of Magnitude Response (dB)')
xlabel('\omega')
ylabel('Stopband dB')
yyaxis right
plot(w1/pi, hdb1)
axis([0 1 -0.05 0.02])
ylabel('Passband dB')

%Prob. 6(b)
b2 = fir1(M, 0.4, 'high', kaiser(M+1,4.53));
[h2, w2] = freqz(b2, 1);
hdb2 = mag2db(abs(h2));
dh2 = abs(h1)-LP;

figure
subplot(2, 2, 1)
stem(b2)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
plot(w2/pi, hdb2)
title('Magnitude Response (dB)')
xlabel('\omega')
ylabel('Decibels')

subplot(2, 2, 3)
plot(w2/pi, dh2)
axis([0 1 -0.0032 0.0032])
title('Approximation Error')
xlabel('\omega')
ylabel('Amplitude')

subplot(2, 2, 4)
yyaxis left
plot(w2/pi, hdb2)
axis([0 1 -100 -50])
title('Zoom of Magnitude Response (dB)')
xlabel('\omega')
ylabel('Stopband dB')
yyaxis right
plot(w2/pi, hdb2)
axis([0 1 -0.02 0.03])
ylabel('Passband dB')