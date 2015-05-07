
delta  = 1/32;
t.seq  = seq(1,100, delta);  

sigma2 = 0.001;
x.t = brownian.motion(t.seq, sigma2 = sigma2);
y.t = brownian.motion(t.seq, sigma2 = sigma2);
my.bm.plot( x.t, y.t);


brownian.motion <- function( time.seq, mu = 0, sigma2 = 1){
    x.t = rnorm(n = length(t.seq), mean = mu, sd = sqrt(sigma2));
    x.t = cumsum(x.t);
    return(x.t);
}

my.bm.plot  <- function(x, y){
    y.bound = max( abs(y)) + 1;
    x.bound = max( abs(x)) + 1;
    plot(x, y, type = "l", xlim = c(-x.bound, x.bound),
         ylim = c(-y.bound, y.bound));
}
