%Prob. 6(a)
n = 0:49;
x = cos(2*pi/100*n);
c1 = dtfs0(x);
c2 = dtfs(x);

figure
stem(abs(c1))
title('dtfs0')

figure
stem(abs(c2))
title('dtfs')

%Prob. 6(b)
k = 0:49;
c = cos(2*pi/100*k);
x1 = idtfs0(c);
x2 = idtfs(c);

figure
stem(abs(x1))
title('idtfs0')

figure
stem(abs(x2))
title('idtfs')


