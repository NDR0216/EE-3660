%Prob. 2(b)
x = sin(2*pi*0.01*(0:100)) + 0.05*randn(1,101);
h = ones(1,5);
y1 = conv(x, h); 
Ax = sum(x)
Ah = sum(h)
Ay = sum(y1)
AxAh = Ax*Ah
nx=0:length(x)-1;
ny=0:length(y1)-1;

figure
subplot(2, 1, 1), plot(nx, x)
title('x[n]')
xlabel('n')
ylabel('y[n]')
subplot(2, 1, 2), plot(ny, y1)
title('y[n]')
xlabel('n')
ylabel('y[n]')

%Prob. 2(c)
h_normalized = h/Ah;
y2 = conv(x, h_normalized); 
Ax = sum(x)
Ah = sum(h_normalized)
Ay = sum(y2)
AxAh = Ax*Ah
nx=0:length(x)-1;
ny=0:length(y2)-1;

figure
subplot(2, 1, 1), plot(nx, x)
title('x[n]')
xlabel('n')
ylabel('y[n]')
subplot(2, 1, 2), plot(ny, y2)
title('y[n] normalized')
xlabel('n')
ylabel('y[n]')