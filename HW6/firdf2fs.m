function [G,sos]=firdf2fs(h)
N = length(h);
if mod(N, 2)==0
    K = N/2-1;
else
    K = (N-1)/2;
end

H = fft(h);
H_mag = abs(H);
H_phase = angle(H);

G = zeros(K+2,1);
G(1)=H(1);
G(2:K+1) = 2*abs(H(2:K+1));
if mod(N, 2)==0
    G(K+2)=H(N/2+1);
else
    G(K+2)=0;
end

sos = zeros(K+2, 6);
sos(1, :) = [1 0 0 1 -1 0];
for k = 2:K+1
    sos(k, :) = [cos(H_phase(k)) -cos(H_phase(k)-2*pi*(k-1)/N) 0 1 -2*cos(2*pi*(k-1)/N) 1];
end
sos(K+2, :) = [1 0 0 1 1 0];

end

