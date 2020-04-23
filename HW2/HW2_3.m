%Prob. 3(a)
b=[2 -2];
a=[1 -1/3];
delta = [1, zeros(1, 49)];
hn1 = filter(b, a, delta);

figure
stem(hn1)
title('h[n]')
xlabel('n')
ylabel('h[n]')

%Prob. 3(b)
figure
zplane(b, a)

%Prob. 3(c)
hn2 = impz(b, a, 50);

figure
subplot(2, 1, 1)
stem(hn1, 'r')
subplot(2, 1, 2)
stem(hn2, 'g')
title('h[n]')
xlabel('n')
ylabel('h[n]')

dh = hn2' - hn1;
figure
stem(dh)
title('impz - filter')

%Prob. 3(d)
[r, p, k] = residuez(b, a);
r, p, k
