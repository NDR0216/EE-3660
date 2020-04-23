%Prob. 4(c)
w = linspace(-pi, pi, 50);
b1 = [1 -6 10 2 -15];
a1 = [1 15 100 370 744 720];
h1 = freqs(b1, a1, w);

figure
subplot(2, 1, 1)
plot(w, abs(h1))
title('magnitude of H')
xlabel('w')
ylabel('|H|')
subplot(2, 1, 2)
plot(w, angle(h1))
title('phase of H')
xlabel('w')
ylabel('°ÁH')

z1 = [3 1 2+i 2-i]';
p1 = [5 3+3i 3-3i 2+2i 2-2i]';
k1 = 1;
[b2,a2] = zp2tf(z1, p1, k1);
h2 = freqs(b2, a2, w);

figure
subplot(2, 1, 1)
plot(w, abs(h2))
title('magnitude of Hmin')
xlabel('w')
ylabel('|Hmin|')
subplot(2, 1, 2)
plot(w, angle(h2))
title('phase of Hmin')
xlabel('w')
ylabel('°ÁHmin')

%Prob. 4(d)
z2 = [-1 5 3+3i 3-3i 2+2i 2-2i]';
p2 = [1 -5 -3+3i -3-3i -2+2i -2-2i];
k2 = 1;
[b3,a3] = zp2tf(z2, p2, k2);
h3 = freqs(b3, a3, w);

figure
subplot(2, 1, 1)
plot(w, abs(h3))
title('magnitude of Hap')
xlabel('w')
ylabel('|Hap|')
subplot(2, 1, 2)
plot(w, angle(h3))
title('phase of Hap')
xlabel('w')
ylabel('°ÁHap')