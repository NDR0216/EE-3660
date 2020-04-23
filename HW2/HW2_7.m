%Prob. 7(a)
n = 0:4;
x1 = 4.*cos(1.2*pi*n + pi/3) + 6.*sin(0.4*pi*n - pi/6);
c1 = dtfs(x1);

figure
subplot(2, 1, 1)
stem(abs(c1))
title('magnitude of X1[k]')
xlabel('k')
ylabel('|X[k]|')
subplot(2, 1, 2)
stem(angle(c1))
title('phase of X1[k]')
xlabel('k')
ylabel('°ÁX[k]')

%Prob. 7(b)
x2 = [1,1,0,1,1,1,0,1];
c2 = dtfs(x2);

figure
subplot(2, 1, 1)
stem(abs(c2))
title('magnitude of X2[k]')
xlabel('k')
ylabel('|X[k]|')
subplot(2, 1, 2)
stem(angle(c2))
title('phase of X2[k]')
xlabel('k')
ylabel('°ÁX[k]')

%Prob. 7(c)
n = 0:11;
x3 = 1-sin(pi/4*n);
c3 = dtfs(x3);

figure
subplot(2, 1, 1)
stem(abs(c3))
title('magnitude of X3[k]')
xlabel('k')
ylabel('|X[k]|')
subplot(2, 1, 2)
stem(angle(c3))
title('phase of X3[k]')
xlabel('k')
ylabel('°ÁX[k]')