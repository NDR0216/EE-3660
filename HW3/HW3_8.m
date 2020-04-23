%Prob. 8(a)
w = linspace(-pi, pi, 50);
b1 = [zeros(1, 15), 1];
h1 = freqz(b1, 1, w);
P1 = angle(h1);

figure
stem(w, angle(h1))
title('freqz + angle')
xlabel('w')
ylabel('°ÁH')

phi1 = phasez(b1, 1, w);
figure
stem(w, phi1)
title('phasez')
xlabel('w')
ylabel('°ÁH')

Q1 = unwrap(P1);

figure
stem(w, Q1)
title('unwrap')
xlabel('w')
ylabel('°ÁH')

phi2 = phasedelay(b1, 1, w);

figure
stem(w, phi2)
title('phasedelay')
xlabel('w')
ylabel('°ÁH')

%Prob. 8(b)
b2 = [1 1.655 1.655 1];
a2 = [1 -1.57 1.264  -0.4];
h2 = freqz(b2, a2, w);
P2 = angle(h2);

figure
stem(w, angle(h2))
title('freqz + angle')
xlabel('w')
ylabel('°ÁH')

phi3 = phasez(b2, a2, w);
figure
stem(w, phi3)
title('phasez')
xlabel('w')
ylabel('°ÁH')

Q2 = unwrap(P2);

figure
stem(w, Q2)
title('unwrap')
xlabel('w')
ylabel('°ÁH')

phi4 = phasedelay(b2, a2, w);

figure
stem(w, phi4)
title('phasedelay')
xlabel('w')
ylabel('°ÁH')