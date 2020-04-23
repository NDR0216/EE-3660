img = imread('DSP.png');
figure
imshow(img);
imwrite(img, 'DSP0.png');

%Prob. 9(a)
img_double = double(img);
h = ones(5, 5)/25;
img1 = conv2(img_double, h);
figure
imshow(img1);
imwrite(img1, 'DSP1.png');

%Prob. 9(b)
h1 = [1 0 -1; 2 0 -2; 1 0 -1];
img2 = conv2(img_double, h1);
img2
img2 = abs(img2);
img2 = uint8(img2);
figure
imshow(img2);
imwrite(img2, 'DSP2.png');

h2 = h1';
img3 = conv2(img_double, h2);
img3
img3 = abs(img3);
img3 = uint8(img3);
figure
imshow(img3);
imwrite(img3, 'DSP3.png');

%Prob. 9(c)
img4 = filter2(h1, img_double);
img4
img4 = abs(img4);
img4 = uint8(img4);
figure
imshow(img4);
imwrite(img4, 'DSP4.png');

img5 = filter2(h2, img_double);
img5
img5 = abs(img5);
img5 = uint8(img5);
figure
imshow(img5);
imwrite(img5, 'DSP5.png');