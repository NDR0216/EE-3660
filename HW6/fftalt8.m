function X = fftalt8(x)
s1 = zeros(1, 8);
s2 = zeros(1, 8);
X = zeros(1, 8);

for k = 1:8
    if k < 5
        s1(k) = x(k) + x(k+4);
    else
        s1(k) = x(k-4) - x(k);
    end
end

for k = 1:8
    if k < 3
        s2(k) = s1(k) + s1(k+2);
    elseif k < 5
        s2(k) = s1(k+2) + exp(-i*2*pi/8*2)*s1(k+4);
    elseif k < 7
        s2(k) = s1(k-4) - s1(k-2);
    else
        s2(k) = s1(k-2) - exp(-i*2*pi/8*2)*s1(k);
    end
end

for k = 1:8
    if k < 5
        X(k) = s2(2*k-1) + exp(-i*2*pi/8*(k-1))*s2(2*k);
    else
        X(k) = s2(2*k-9) - exp(-i*2*pi/8*(k-5))*s2(2*k-8);
    end
end

end
