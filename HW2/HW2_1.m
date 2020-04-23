%Prob. 1(a)
n1 = 0:98;
yn1 = 0.9.^n1.*(n1+1);

figure
stem(n1, yn1)
title('y[n] analytical')
xlabel('n')
ylabel('y[n]')

%Prob. 1(b)
n2 = 0:49;
xn2 = 0.9.^n2;
hn2 = 0.9.^n2;
yn2 = conv(xn2, hn2);
ny=0:length(yn2)-1;

figure
stem(ny, yn2)
title('y[n] conv')
xlabel('n')
ylabel('y[n]')

%Prob. 1(c)
n3 = 0:98;
xn3 = 0.9.^n3;
hn3 = 0.9.^n3;
yn3 = filter(hn3, 1, xn3);

figure
stem(n3, yn3)
title('y[n] filter')
xlabel('n')
ylabel('y[n]')

%Prob. 1(d)
dy1 = yn2 - yn1;
dy2 = yn3 - yn1;

figure
stem(dy1)
title('(b) - (a)')
figure
stem(dy2)
title('(c) - (a)')