

## sample a 2d brownian motion
get.bm <- function( time.seq, mu = 0, sigma2 = 1){
    x.t = rnorm(n = length(t.seq), mean = mu, sd = sqrt(sigma2));
    x.t = cumsum(x.t);
    return(x.t);
}

## plotting
plot.bm  <- function(x, y){
    y.bound = max( abs(y)) + 1;
    x.bound = max( abs(x)) + 1;
    plot(x, y, type = "l", xlim = c(-x.bound, x.bound),
         ylim = c(-y.bound, y.bound));
}
