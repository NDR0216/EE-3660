%Prob. 5(b)
w = linspace(-pi, pi, 50);
z = [1 -1]';
p = [0.95*sqrt(2)/2*(1+i) 0.95*sqrt(2)/2*(1-i)]';
k = 0.066;
[b,a] = zp2tf(z, p, k);
h = freqz(b, a, w);

figure
stem(w, abs(h))
title('magnitude of H')
xlabel('w')
ylabel('|H|')

%Prob. 5(c)
gd = grpdelay(b, a, w);

figure
subplot(2, 1, 1)
stem(w, angle(h))
title('phase of H')
xlabel('w')
ylabel('ก็H')
subplot(2, 1, 2)
stem(w, gd)
title('group delay of H')
xlabel('w')
ylabel('gd')