%Prob. 7(a)
w = linspace(-2*pi, 2*pi, 512);
h1 = [1 2 3 -2 5 -2 3 2 1];
H1 = freqz(h1, 1, w);
Amp1 = H1./exp(-i*w*4);

figure
subplot(2, 2, 1)
stem(h1)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
zplane(h1, 1)
title('Pole-Zero Plots')

subplot(2, 2, 3)
plot(w, abs(H1))
title('Magnitude Response')
xlabel('\omega')
ylabel('|H(e^{i\omega})|')

subplot(2, 2, 4)
plot(w, Amp1)
title('Amplitude Response')
xlabel('\omega')
ylabel('A(e^{i\omega})')

%Prob. 7(b)
h2 = [1 2 3 -2 -2 3 2 1];
H2 = freqz(h2, 1, w);
Amp2 = H2./exp(-i*w*7/2);

figure
subplot(2, 2, 1)
stem(h2)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
zplane(h2, 1)
title('Pole-Zero Plots')

subplot(2, 2, 3)
plot(w, abs(H2))
title('Magnitude Response')
xlabel('\omega')
ylabel('|H(e^{i\omega})|')

subplot(2, 2, 4)
plot(w, Amp2)
title('Amplitude Response')
xlabel('\omega')
ylabel('A(e^{i\omega})')

%Prob. 7(c)
h3 = [1 2 3 -2 0 2 -3 -2 -1];
H3 = freqz(h3, 1, w);
Amp3 = H3./exp(i*(pi/2-w*4));

figure
subplot(2, 2, 1)
stem(h3)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
zplane(h3, 1)
title('Pole-Zero Plots')

subplot(2, 2, 3)
plot(w, abs(H3))
title('Magnitude Response')
xlabel('\omega')
ylabel('|H(e^{i\omega})|')

subplot(2, 2, 4)
plot(w, Amp3)
title('Amplitude Response')
xlabel('\omega')
ylabel('A(e^{i\omega})')

%Prob. 7(d)
h4 = [1 2 3 -2 2 -3 -2 -1];
H4 = freqz(h4, 1, w);
Amp4 = H4./exp(i*(pi/2-w*7/2));

figure
subplot(2, 2, 1)
stem(h4)
title('Impulse Response')
xlabel('n')
ylabel('h[n]')

subplot(2, 2, 2)
zplane(h4, 1)
title('Pole-Zero Plots')

subplot(2, 2, 3)
plot(w, abs(H4))
title('Magnitude Response')
xlabel('\omega')
ylabel('|H(e^{i\omega})|')

subplot(2, 2, 4)
plot(w, Amp4)
title('Amplitude Response')
xlabel('\omega')
ylabel('A(e^{i\omega})')