%Prob. 3(b)
w = linspace(-pi, pi, 50);
h1 = w/2./sin(w/2);
b  = [-1/16 9/8 -1/16];
[h2,w1] = freqz(b, 1, w);
dh1 = abs(h2)-abs(h1);

figure
stem(w, dh1)
title('Hfir - Hr')
xlabel('w')
ylabel('|Hfir| - |Hr|')

%Prob. 3(c)
a  = [8 1];
[h3,w1] = freqz(9, a, w);
dh2 = abs(h3)-abs(h1);

figure
stem(w, dh2)
title('Hiir - Hr')
xlabel('w')
ylabel('|Hiir| - |Hr|')