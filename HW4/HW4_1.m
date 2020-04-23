%Prob. 1(b)
N1 = 20;
w1 = linspace(0, 2*pi, N1+1);
n1 = 1:N1;
xn1 = n1.*(0.9.^n1).*heaviside(n1);
XN1 = fft(xn1);
X1 = 0.9*exp(-i*w1)./(1-0.9*exp(-i*w1)).^2;

figure
hold on
stem(w1(1:20), abs(XN1), 'r')
stem(w1(1:20), abs(X1(1:20)), 'g')
title('magnitude of X (N = 20)')
xlabel('w')
ylabel('|X|')
legend('XN','X')
hold off

%Prob. 1(c)
N2 = 50;
w2 = linspace(0, 2*pi, N2+1);
n2 = 1:N2;
xn2 = n2.*(0.9.^n2).*heaviside(n2);
XN2 = fft(xn2);
X2 = 0.9*exp(-i*w2)./(1-0.9*exp(-i*w2)).^2;

figure
hold on
stem(w2(1:N2), abs(XN2), 'r')
stem(w2(1:N2), abs(X2(1:N2)), 'g')
title('magnitude of X (N = 50)')
xlabel('w')
ylabel('|X|')
legend('XN','X')
hold off

%Prob. 1(d)
N3 = 100;
w3 = linspace(0, 2*pi, N3+1);
n3 = 1:N3;
xn3 = n3.*(0.9.^n3).*heaviside(n3);
XN3 = fft(xn3);
X3 = 0.9*exp(-i*w3)./(1-0.9*exp(-i*w3)).^2;

figure
hold on
stem(w3(1:N3), abs(XN3), 'r')
stem(w3(1:N3), abs(X3(1:N3)), 'g')
title('magnitude of X (N = 100)')
xlabel('w')
ylabel('|X|')
legend('XN','X')
hold off

dX = XN3 - X3(1:N3);

figure
stem(w3(1:N3), abs(dX))
title('diff of X (N = 100)')
xlabel('w')
ylabel('|XN| - |X|')