[y,Fs] = audioread('handel.wav');
playerObj = audioplayer(y, Fs);
play(playerObj);
audiowrite('handel0.wav', y, Fs);

%Prob. 10(a)
y1 = y(1:2:end);
playerObj = audioplayer(y1, Fs/2);
play(playerObj);
audiowrite('handel1.wav', y1, Fs/2);

%Prob. 10(b)
y2 = y(1:4:end);
playerObj = audioplayer(y2, Fs/4);
play(playerObj)
audiowrite('handel2.wav', y2, Fs/4);