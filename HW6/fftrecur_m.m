function X = fftrecur_m(x,W)
% Recursive computation of the DFT using divide & conquer
% N should be a power of 2 
N = length(x);
if N ==1
  X = x;
else
     m = N/2;
     XE = fftrecur_m(x(1:2:N), W(1:m, 1:2:N));
     XO = fftrecur_m(x(2:2:N), W(1:m, 1:2:N));
     W1 = W(2,(1:m)).';
     temp = W1.*XO;
     X = [ XE+temp ; XE-temp ];
end
