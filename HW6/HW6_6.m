%Prob. 6(b)
n = 0:500;
x = (1/4).^n;
a = [1 -3/2 1/2];
b = 1;
y1 = filterdf1(b,a,x);
y2 = filterdf2(b,a,x);
dy = y1 - y2;

figure
plot(y1)
title('filterdf1')
xlabel('n')
ylabel('y1')

figure
plot(y2)
title('filterdf2')
xlabel('n')
ylabel('y2')

figure
plot(dy)
title('difference between filterdf1 and filterdf2')
xlabel('n')
ylabel('|\DeltaY|')