
library("MoBrownie");

delta  = 1/32;
t.seq  = seq(1,100, delta);  

sigma2 = 0.001;
x.t = get.bm(t.seq, sigma2 = sigma2);
y.t = get.bm(t.seq, sigma2 = sigma2);
plot.bm( x.t, y.t);
