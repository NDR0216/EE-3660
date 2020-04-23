%Prob. 4
%let b0 = 1, b1 = 1
b0 = 1;
b1 = -1;
n = 0:49;

%when a1 < -2, e.g. a1 = -3
a1 = -3;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn1 = iztrans(Hz, n);
figure
stem(n, hn1)
title('Growing exponential')
xlabel('n')
ylabel('h[n]')

%when a1 = -2
a1 = -2;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn2 = iztrans(Hz, n);
figure
stem(hn2)
title('Unit Step')
xlabel('n')
ylabel('h[n]')

b0 = 1;
b1 = 1;

%when 0 > a1 > -2, e.g. a1 = -1
a1 = -1;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn3 = iztrans(Hz, n);
figure
stem(hn3)
title('Decaying exponential')
xlabel('n')
ylabel('h[n]')

%when 2 > a1 > 0, e.g. a1 = 1
a1 = 1;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn4 = iztrans(Hz, n);
figure
stem(hn4)
title('Decaying alternating exponential')
xlabel('n')
ylabel('h[n]')

%when a1 = 2, e.g. a1 = 2
a1 = 2;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn5 = iztrans(Hz, n);
figure
stem(hn5)
title('Unit alternating Step')
xlabel('n')
ylabel('h[n]')

%when a1 > 2, e.g. a1 = 3
a1 = 3;
Hz = z*(b0*z+b1)/(z^2+(a1)*z+(a1^2)/4);
hn6 = iztrans(Hz, n);
figure
stem(hn6)
title('Growing alternating exponential')
xlabel('n')
ylabel('h[n]')