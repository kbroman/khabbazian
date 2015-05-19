# plot_bm 
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
#'t_seq  = seq(1, 100, delta)
#'sigma2 = 0.001
#'x_t    = get_bm(t_seq, sigma2 = sigma2)
#'y_t    = get_bm(t_seq, sigma2 = sigma2)
#'plot_bm(x_t, y_t)
#' 
#'@export
plot_bm  <- function(x, y, ...){
    stopifnot(length(x) == length(y));

    y_bound = max(abs(y)) + 1;
    x_bound = max(abs(x)) + 1;
    plot(x, y, type = "l", xlim = c(-x_bound, x_bound),
         ylim = c(-y_bound, y_bound), ... );
}


# get_bm 
#'generate a sample 2d Brownian motion (BM)
#'
#'@param time_seq input time sequence.
#'@param mu input expected value of BM or the starting value.
#'@param sigma2 input variance 
#'
#'@return x_t a series of numbers 
#'
#'@examples
#'get_bm(c(1,2,3,4))
#' 
#'@export
get_bm <- function(time_seq, mu = 0, sigma2 = 1){
    ## the variance has to be postive
    stopifnot( sigma2 >= 0);

    if(length(time_seq)==0){
        return(numeric());
    }

    x_t = rnorm(n = length(time_seq), mean = mu, sd = sqrt(sigma2));
    x_t = cumsum(x_t);
    return(x_t);
}

