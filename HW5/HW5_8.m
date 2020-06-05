%Prob. 8(a)
w = linspace(-pi, pi, 512);
L1 = 21;
h1 = blackman(L1);
H1 = freqz(h1, 1, w);
Hdb1 = mag2db(abs(H1));
Hdb1_normalize = Hdb1 - max(Hdb1);
[pks1, locs1] = findpeaks(Hdb1_normalize,'SortStr','descend');
s1 = num2str(w(locs1(2)));
s2 = num2str(pks1(2));
s3 = num2str(w(locs1(3)));
s4 = num2str(pks1(3));

figure
plot(w, Hdb1_normalize, w(locs1(2:3)), pks1(2:3), 'o')
axis([-pi pi -150 0])
text(w(locs1(2)), pks1(2), strcat('(', s1, ',', s2, ')'))
text(w(locs1(3)), pks1(3), strcat('(', s3, ',', s4, ')'))

%Prob. 8(b)
Amp1 = H1./exp(-i*w*(L1-1)/2);
A1 = cumsum(Amp1);
Adb1 = mag2db(abs(A1));
Adb1_normalize = Adb1 - max(Adb1);
[pks2, locs2] = findpeaks(Adb1_normalize,'SortStr','descend');
idx1 = find(pks2 < -50);
s5 = num2str(w(locs2(idx1(1))));
s6 = num2str(pks2(idx1(1)));

figure
plot(w, Adb1_normalize, w(locs2(idx1(1))), pks2(idx1(1)), 'o')
axis([-pi pi -150 0])
text(w(locs2(idx1(1))), pks2(idx1(1)), strcat('(', s5, ',', s6, ')'))

%Prob. 8(c)
L2 = 41;
h2 = blackman(L2);
H2 = freqz(h2, 1, w);
Hdb2 = mag2db(abs(H2));
Hdb2_normalize = Hdb2 - max(Hdb2);
[pks3, locs3] = findpeaks(Hdb2_normalize,'SortStr','descend');
s7 = num2str(w(locs3(2)));
s8 = num2str(pks3(2));
s9 = num2str(w(locs3(3)));
s10 = num2str(pks3(3));

figure
plot(w, Hdb2_normalize, w(locs3(2:3)), pks3(2:3), 'o')
axis([-pi pi -150 0])
text(w(locs3(2)), pks3(2), strcat('(', s6, ',', s7, ')'))
text(w(locs3(3)), pks3(3), strcat('(', s8, ',', s9, ')'))

Amp2 = H2./exp(-i*w*(L2-1)/2);
A2 = cumsum(Amp2);
Adb2 = mag2db(abs(A2));
Adb2_normalize = Adb2 - max(Adb2);
[pks4,locs4] = findpeaks(Adb2_normalize,'SortStr','descend');
idx2 = find(pks4 < -50);
s11 = num2str(w(locs4(idx2(1))));
s12 = num2str(pks4(idx2(1)));

figure
plot(w, Adb2_normalize, w(locs4(idx2(1))), pks4(idx2(1)), 'o')
axis([-pi pi -150 0])
text(w(locs4(idx2(1))), pks4(idx2(1)), strcat('(', s11, ',', s12, ')'))