# plot.bm 
#'plot a 2D Brownian motion (BM)
#'
#'@param x input x axis 
#'@param y input y axis 
#'@param ... extra arguments to be passed to plot
#'
#'@return none
#'
#'@examples
#'delta  = 1/32
#'t.seq  = seq(1, 100, delta)
#'sigma2 = 0.001
#'x.t    = get.bm(t.seq, sigma2 = sigma2)
#'y.t    = get.bm(t.seq, sigma2 = sigma2)
#'plot.bm(x.t, y.t)
#' 
#'@export
plot.bm  <- function(x, y, ...){
    stopifnot(length(x) == length(y));

    y.bound = max(abs(y)) + 1;
    x.bound = max(abs(x)) + 1;
    plot(x, y, type = "l", xlim = c(-x.bound, x.bound),
         ylim = c(-y.bound, y.bound), ... );
}


# get.bm 
#'generate a sample 2d Brownian motion (BM)
#'
#'@param time.seq input time sequence.
#'@param mu input expected value of BM or the starting value.
#'@param sigma2 input variance 
#'
#'@return x.t a series of numbers 
#'
#'@examples
#'get.bm(c(1,2,3,4))
#' 
#'@export
get.bm <- function(time.seq, mu = 0, sigma2 = 1){
    ## the variance has to be postive
    stopifnot( sigma2 > 0);
    ## at leat one time point is required
    stopifnot( length(time.seq) > 0 );

    x.t = rnorm(n = length(time.seq), mean = mu, sd = sqrt(sigma2));
    x.t = cumsum(x.t);
    return(x.t);
}

