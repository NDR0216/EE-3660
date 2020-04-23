%Prob. 4(b)
x = [1 2 3 4];
h = [1 -1 1 -1];
y1 = lin2circonv(x,h);
y2 = circonv(x', h');

figure
stem(y1)
title('lin2circonv')
xlabel('n')
ylabel('y')

figure
stem(y2)
title('circonv')
xlabel('n')
ylabel('y')