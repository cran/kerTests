\name{kerTests}
\alias{kerTests-package}
\title{Generalized Kernel Two-Sample Tests}
\description{This package can be used to determine whether two samples are from the same distribution. The Gaussian kernel with the median heuristic, which is the median of all pairwise distances among observations, is used. To obtain the median heuristic, the function \code{\link{med_sigma}} should be used. The main function is \code{\link{kertests}}
}
\author{
Hoseung Song and Hao Chen

Maintainer: Hoseung Song (hosong@ucdavis.edu)
}
\references{
	Song, Hoseung, and Hao Chen (2020). Generalized kernel two-sample tests. arXiv:2011.06127
}

\seealso{
  \code{\link{kertests}}, \code{\link{med_sigma}}
}
\examples{

## Mean difference in Gaussian distribution.
d = 100
mu = 0.2
sam = 100
n = 200
set.seed(500)
X = matrix(rnorm(d*sam), sam)
Y = matrix(rnorm(d*sam,mu), sam)
sigma = med_sigma(X, Y) # median heuristic
a = kertests(X, Y, sigma, r1=1.2, r2=0.8, perm=1000)
# output results based on the permutation and the asymptotic results
# the test statistic values can be found in a$teststat
# p-values can be found in a$pval

}

