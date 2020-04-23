%Prob. 10(a)
b1 = [1 2 1.75];
a1 = [1 -0.5];

b1_min = polystab(b1);
a1_min = polystab(a1);

figure
title('minimum-phase')
zplane(b1_min, a1_min)

sys1 = tf(b1_min, a1_min);
Z1 = zero(sys1);
P1 = pole(sys1);
Z1_recip = conj(1./Z1);
P1_recip = 1./P1;

figure
title('maximum-phase')
zplane(Z1_recip, P1_recip)

%Prob. 10(b)
b2 = [1 -2.4142 2.4142 -1];
a2 = [1 -1.8 1.62 0.729];

b2_min = polystab(b2);
a2_min = polystab(a2);

figure
title('minimum-phase')
zplane(b2_min, a2_min)

sys2 = tf(b2_min, a2_min);
Z2 = zero(sys2);
P2 = pole(sys2);
Z2_recip = conj(1./Z2);
P2_recip = 1./P2;

figure
title('maximum-phase')
zplane(Z2_recip, P2_recip)