%Prob. 8(a)
x=[1 1 1]; % n=-1,0,1
om=linspace(-pi, pi, 60);
X1=dtft12(x, -1, om);
X2=freqz(x, 1, om);

figure
subplot(2,2,1);
stem(abs(X1))
title('magnitude of X1')
xlabel('k')
ylabel('|X1|')

subplot(2,2,2);
stem(abs(X2))
title('magnitude of X2')
xlabel('k')
ylabel('|X2|')

subplot(2,2,3);
stem(angle(X1))
title('phase of X1')
xlabel('k')
ylabel('ก็X1')

subplot(2,2,4);
stem(angle(X2))
title('phase of X2')
xlabel('k')
ylabel('ก็X2')