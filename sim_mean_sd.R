#' Title
#'
#' @param n_subj number of subjects
#' @param mu true sample mean
#' @param sigma true sample sd
#'
#' @returns tibble with smaple mean and sample


sim_mean_sd = function(n, mu = 2, sigma = 3) {
  sim_data = tibble(
    x = rnorm(n, mean = mu, sd = sigma),
  )
  
  sim_data |> 
    summarize(
      mu_hat = mean(x),
      sigma_hat = sd(x)
    )
}