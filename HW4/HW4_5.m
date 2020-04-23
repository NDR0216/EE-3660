%Prob. 5
img = imread('lena.jpg');
figure
imshow(img);

%Prob. 5(a)
m = -128:127;
n = -128:127;
sigma1 = 4;
h1 = 1/2/pi/(sigma1^2)*exp(-((m'.^2+n.^2)/2/(sigma1^2)));
h1_shift = ifftshift(h1);
H1 = fft2(h1_shift);
H1_log = log(abs(H1));
figure
imshow(H1_log, []);

%Prob. 5(b)
img_dft = fft2(img);
Y1 = img_dft.*H1;
y1 =  ifft2(Y1);

figure
imshow(y1, [])

%Prob. 5(c)
sigma2 = 32;
h2 = 1/2/pi/(sigma2^2)*exp(-((m'.^2+n.^2)/2/(sigma2^2)));
h2_shift = ifftshift(h2);
H2 = fft2(h2_shift);
H2_log = log(abs(H2));

figure
imshow(H2_log, []);

Y2 = img_dft.*H2;
y2 = ifft2(Y2);

figure
imshow(abs(y2), [])

%Prob. 5(d)
img1 = padarray(img, [128 128], 0, 'both');
h3 = padarray(h2, [128 128], 0, 'both');
h3_shift = ifftshift(h3);
img1_dft = fft2(img1);
H3 = fft2(h3_shift);
Y3 = img1_dft.*H3;
y3 = ifft2(Y3);

figure
imshow(abs(y3), [])

%Prob. 5(e)
H4 = 1-H1;
Y4 = img_dft.*H4;
y4 = ifft2(Y4);

figure
imshow(abs(y4), [])