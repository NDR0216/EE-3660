%Prob. 5(b)
x = zeros(1,50);
b = [0 0 0];
a = [1 -2*cos(0.1*pi) 1];
yic = [0 -2*sin(0.1*pi)];
xic = [0 0];
zic = filtic(b, a, yic, xic);
y = filter(b, a, x, zic);

figure
stem(y)
title('y[n]')
xlabel('n')
ylabel('y[n]')

n = 0:49;
y1 = 2.*sin((n+1)*0.1*pi).*heaviside(n);

figure
stem(n, y1)
title('y[n]')
xlabel('n')
ylabel('y[n]')