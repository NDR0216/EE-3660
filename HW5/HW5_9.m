%Prob. 9(a)(b)
L = 40;
Ad1 = [ones(1, 8), 0.5, zeros(1, 23), 0.5, ones(1, 7)];
Psi1 = (L-1)/2*2*pi/L*[0:-1:-19, 20:-1:1];
Hd1 = Ad1.*exp(i*Psi1);
h1 = ifft(Hd1);
[H1, w1] = freqz(h1, 1);
Hdb1 = mag2db(abs(H1)); 
Lw1 = length(w1);

figure
stem(h1)
title('Impulse Response - sample at \omega_c = 0.5')
xlabel('n')
ylabel('h[n]')

Ad2 = [ones(1, 8), 0.39, zeros(1, 23), 0.39, ones(1, 7)];
Psi2 = (L-1)/2*2*pi/L*[0:-1:-19, 20:-1:1];
Hd2 = Ad2.*exp(i*Psi2);
h2 = ifft(Hd2);
[H2, w2] = freqz(h2, 1);
Hdb2 = mag2db(abs(H2)); 
Lw2 = length(w2);

figure
stem(h2)
title('Impulse Response - sample at \omega_c = 0.39')
xlabel('n')
ylabel('h[n]')

figure
hold on
plot(w1/pi, Hdb1, 'r')
plot(w2/pi, Hdb2, 'g')
hold off
axis([0 1 -100 0])
legend('sample at \omega_c = 0.5','sample at \omega_c = 0.39')

Asd1 = max(Hdb1(uint16(0.45*Lw1): Lw1-1))
Asd2 = max(Hdb2(uint16(0.45*Lw2): Lw2-1))
title('Magnitude Response (dB)')
xlabel('\omega')
ylabel('Decibels')

%Prob. 9(c)
f = [0 0.4 0.4 1];
m = [1 1 0 0];
h3 = fir2(40, f, m);
[H3, w3] = freqz(h3, 1);
Hdb3 = mag2db(abs(H3));
Lw3 = length(w3);

figure
stem(h3)
title('Impulse Response - hamming window')
xlabel('n')
ylabel('h[n]')

figure
plot(w3/pi, Hdb3)
title('Magnitude Response (dB) - hamming windows')
xlabel('\omega')
ylabel('Decibels')

Asd3 = max(Hdb3(uint16(0.5*Lw3): Lw3-1))