%Prob. 5(b)
h1 = [1,2,3,2,1];
h2 = [1,-2,3,3,-2,1];
h3 = [1,-5,0,5,-1];
h4 = [1,-3,-4,4,3,-1];
h5 = [1,2,3,-2,-1];
x=ones(1,10);
y1_lp = filterfirlp(h1,x);
y1 = filter(h1,1,x);
dy1 = y1_lp - y1;

figure
stem(dy1)
title('difference between filterfirlp and filter (y1)')
xlabel('k')
ylabel('|\DeltaH|')

y2_lp = filterfirlp(h2,x);
y2 = filter(h2,1,x);
dy2 = y2_lp - y2;

figure
stem(dy2)
title('difference between filterfirlp and filter (y2)')
xlabel('k')
ylabel('|\DeltaH|')

y3_lp = filterfirlp(h3,x);
y3 = filter(h3,1,x);
dy3 = y3_lp - y3;

figure
stem(dy3)
title('difference between filterfirlp and filter (y3)')
xlabel('k')
ylabel('|\DeltaH|')

y4_lp = filterfirlp(h4,x);
y4 = filter(h4,1,x);
dy4 = y4_lp - y4;

figure
stem(dy4)
title('difference between filterfirlp and filter (y4)')
xlabel('k')
ylabel('|\DeltaH|')

y5_lp = filterfirlp(h5,x);
y5 = filter(h5,1,x);
dy5 = y5_lp - y5;

figure
stem(dy5)
title('difference between filterfirlp and filter (y5)')
xlabel('k')
ylabel('|\DeltaH|')