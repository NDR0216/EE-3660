%Prob. 9(a)
w = linspace(-pi, pi, 50);
b1 = [1 -2 3 -4 0 4 -3 2 -1];
h1 = freqz(b1, 1, w);
gd1 = grpdelay(b1, 1, w);

figure
subplot(3, 1, 1)
stem(w, abs(h1))
title('magnitude of H1')
xlabel('w')
ylabel('|H1|')
subplot(3, 1, 2)
stem(w, angle(h1))
title('phase of H1')
xlabel('w')
ylabel('°ÁH1')
subplot(3, 1, 3)
plot(w, gd1)
title('group delay of H1')
xlabel('w')
ylabel('gd')

%Prob. 9(b)
b2 = [zeros(1, 10) 1];
h2 = freqz(b2, 1, w);
gd2 = grpdelay(b2, 1, w);

figure
subplot(3, 1, 1)
stem(w, abs(h2))
title('magnitude of H2')
xlabel('w')
ylabel('|H2|')
subplot(3, 1, 2)
stem(w, angle(h2))
title('phase of H2')
xlabel('w')
ylabel('°ÁH2')
subplot(3, 1, 3)
plot(w, gd2)
title('group delay of H2')
xlabel('w')
ylabel('gd2')