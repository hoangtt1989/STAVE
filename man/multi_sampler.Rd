% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_sampler.R
\name{multi_sampler}
\alias{multi_sampler}
\title{Multi-sampling for random starts.}
\usage{
multi_sampler(X_affinity, y_affinity, lambda, num_sub = lambda,
  num_init = 50, iter_init = 5, num_run = 2, seed = 123,
  init_type = c("sampler", "rnorm"), parallel = F, ...)
}
\arguments{
\item{X_affinity}{a symmetric matrix of affinities between predictors.}

\item{y_affinity}{a vector of affinities between each predictor and the response.}

\item{lambda}{the tuning paramemter. Either a non-negative real number for soft or hard thresholding or a non-negative integer for quantile thresholding.}

\item{num_sub}{the number of non-zero elements in the initial beta estimates.}

\item{num_init}{the number of initial beta estimates.}

\item{iter_init}{the number of iterations for the initial beta estimates.}

\item{num_run}{the number of initial estimates to run to convergence.}

\item{seed}{an integer for setting the seed.}

\item{init_type}{the type of sampling for the initial beta estimates. Sampler uses the magnitudes of values in y_affinity, rnorm uses \code{stat::rnorm}.}

\item{parallel}{a boolean indicating whether the \code{\link[foreach]{foreach}} loop should be parallelized. A backend for \code{\link[foreach]{foreach}} must be registered if this is \code{T}.}

\item{...}{additional arguments passed to \code{\link{SPAS}}.}
}
\value{
A \code{SPAS} object.
}
\description{
Multi-sampling for random starts.
}
