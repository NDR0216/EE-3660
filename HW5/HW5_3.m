%Prob. 3(a)
w = linspace(-2*pi, 2*pi, 512);
H = 2*cos(1/2*w) + 2*cos(3/2*w);
phase = atan(tan(-3/2*w));
angle = -3/2*w;

figure
plot(w, abs(H))
title('Magnitude Response')
xlabel('\omega')
ylabel('|H(e^{i\omega})|')

figure
plot(w, H)
title('Amplitude Response')
xlabel('\omega')
ylabel('A(e^{i\omega})')

figure
plot(w, phase)
title('Phase Response')
xlabel('\omega')
ylabel('\angleH(e^{i\omega})')

figure
plot(w, angle)
title('Angle Response')
xlabel('\omega')
ylabel('\Psi(e^{i\omega})')