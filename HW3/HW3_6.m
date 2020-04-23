%Prob. 6(b)
w = linspace(-3*pi, 3*pi, 61);
Fs1 = 30;
T1 = 1/Fs1;
F1 = linspace(-3/2/T1, 3/2/T1, 61);
X1 = zeros(1, 61);
for N = 1:61
    W = (N-31)/10*pi;
    for k = -1:1
        if (W-2*pi*k)/T1 - 16*pi == 0
            X1(N)= X1(N) + 1/T1*4;
        elseif (W-2*pi*k)/T1 + 16*pi == 0
            X1(N)= X1(N) + 1/T1*2;
        elseif (W-2*pi*k)/T1 - 24*pi == 0
            X1(N)= X1(N) + 1/T1*8;
        elseif (W-2*pi*k)/T1 + 24*pi == 0
            X1(N)= X1(N) + 1/T1*2;
        end
    end
end

figure
subplot(2, 1, 1)
stem(w, abs(X1))
title('magnitude of X - w (Fs = 30)')
xlabel('w')
ylabel('|X1|')
subplot(2, 1, 2)
stem(w, angle(X1))
title('phase of X - w (Fs = 30)')
xlabel('w')
ylabel('°ÁX1')

figure
subplot(2, 1, 1)
stem(F1, abs(X1))
title('magnitude of X - F (Fs = 30)')
xlabel('F')
ylabel('|X1|')
subplot(2, 1, 2)
stem(F1, angle(X1))
title('phase of X - F (Fs = 30)')
xlabel('F')
ylabel('°ÁX1')


Fs2 = 20;
T2 = 1/Fs2;
F2 = linspace(-3/2/T2, 3/2/T2, 61);
X2 = zeros(1, 61);
for N = 1:61
    W = (N-31)/10*pi;
    for k = -1:1
        if (W-2*pi*k)/T2 - 16*pi == 0
            X2(N)= X2(N) + 1/T2*4;
        elseif (W-2*pi*k)/T2 + 16*pi == 0
            X2(N)= X2(N) + 1/T2*2;
        elseif (W-2*pi*k)/T2 - 24*pi == 0
            X2(N)= X2(N) + 1/T2*8;
        elseif (W-2*pi*k)/T2 + 24*pi == 0
            X2(N)= X2(N) + 1/T2*2;
        end
    end
end

figure
subplot(2, 1, 1)
stem(w, abs(X2))
title('magnitude of X - w (Fs = 20)')
xlabel('w')
ylabel('|X2|')
subplot(2, 1, 2)
stem(w, angle(X2))
title('phase of X - w (Fs = 30)')
xlabel('w')
ylabel('°ÁX2')

figure
subplot(2, 1, 1)
stem(F2, abs(X2))
title('magnitude of X - F (Fs = 20)')
xlabel('F')
ylabel('|X1|')
subplot(2, 1, 2)
stem(F2, angle(X2))
title('phase of X - F (Fs = 20)')
xlabel('F')
ylabel('°ÁX2')


Fs3 = 15;
T3 = 1/Fs3;
F3 = linspace(-3/2/T3, 3/2/T3, 61);
X3 = zeros(1, 61);
for N = 1:61
    W = (N-31)/10*pi;
    for k = -1:1
        if (W-2*pi*k)/T3 - 16*pi == 0
            X3(N)= X3(N) + 1/T3*4;
        elseif (W-2*pi*k)/T3 + 16*pi == 0
            X3(N)= X3(N) + 1/T3*2;
        elseif (W-2*pi*k)/T3 - 24*pi == 0
            X3(N)= X3(N) + 1/T3*8;
        elseif (W-2*pi*k)/T3 + 24*pi == 0
            X3(N)= X3(N) + 1/T3*2;
        end
    end
end

figure
subplot(2, 1, 1)
stem(w, abs(X3))
title('magnitude of X - w (Fs = 15)')
xlabel('w')
ylabel('|X3|')
subplot(2, 1, 2)
stem(w, angle(X3))
title('phase of X - w (Fs = 15)')
xlabel('w')
ylabel('°ÁX3')

figure
subplot(2, 1, 1)
stem(F1, abs(X3))
title('magnitude of X - F (Fs = 15)')
xlabel('F')
ylabel('|X3|')
subplot(2, 1, 2)
stem(F1, angle(X3))
title('phase of X - F (Fs = 15)')
xlabel('F')
ylabel('°ÁX3')