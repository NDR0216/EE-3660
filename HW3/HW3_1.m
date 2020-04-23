%Prob. 1(a)
w = linspace(-pi, pi, 50);
b1 = [1/4 1/4 -1/4 -1/4];
[h1, w1] = freqz(b1, 1, w);

figure
zplane(b1, 1)
title('pole-zero of H1')

figure
stem(w, abs(h))
title('magnitude of H1')
xlabel('w')
ylabel('|H1|')

%Prob. 1(b)
b2 = [1 0 0 0 -1];
a2 = [1 0 0 0 -0.6561];
[h2, w2] = freqz(b2, a2, w);

figure
zplane(b2, a2)
title('pole-zero of H2')

figure
stem(w, abs(h2))
title('magnitude of H2')
xlabel('w')
ylabel('|H2|')