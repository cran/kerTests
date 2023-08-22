\name{kertests}
\alias{kertests}
\title{Generalized Kernel Two-Sample Tests}
\description{This function provides generalzied kernel-based two-sample tests.}
\usage{
kertests(X, Y, sigma, r1=1.2, r2=0.8, perm=0)
}
\arguments{
  \item{X}{The first samples.}
  \item{Y}{The second samples.}
  \item{sigma}{The bandwidth of Gaussian kernels. The median heuristic should be used.}
  \item{r1}{The constant in the test statistics \eqn{\textrm{Z}_{W,r1}}.}
  \item{r2}{The constant in the test statistics \eqn{\textrm{Z}_{W,r2}}.}
  \item{perm}{The number of permutations performed to calculate the p-value of the test. The default value is 0, which means the permutation is not performed and only approximated p-value based on the asymptotic theory is provided. Doing permutation could be time consuming, so be cautious if you want to set this value to be larger than 10,000.}
}

\value{
  Returns a list \code{teststat} with each test statistic value and a list \code{pval} with p-values of the tests. See below for more details.
  \item{GPK}{The value of the test statistic GPK}
  \item{ZW1}{The value of the test statistic \eqn{\textrm{Z}_{W,r1}}.}
  \item{ZW2}{The value of the test statistic \eqn{\textrm{Z}_{W,r2}}.}
  \item{ZD}{The value of the test statistic \eqn{\textrm{Z}_{D}}.}
  \item{fGPK_appr}{The approximated p-value of fGPK based on asymptotic theory.}
  \item{fGPKM_appr}{The approximated p-value of \eqn{\textrm{fGPK}_{M}} based on asymptotic theory.}
  \item{fGPK_Simes_appr}{The approximated p-value of fGPK based on asymptotic theory with a Simes procedure.}
  \item{fGPKM_Simes_appr}{The approximated p-value of \eqn{\textrm{fGPK}_{M}} based on asymptotic theory with a Simes procedure.}
  \item{GPK_perm}{The permutation p-value of GPK when argument `perm' is positive.}
  \item{fGPK_perm}{The permutation p-value of fGPK when argument `perm' is positive.}
  \item{fGPKM_perm}{The permutation p-value of \eqn{\textrm{fGPK}_{M}} when argument `perm' is positive.}
  \item{fGPK_Simes_perm}{The permutation p-value of fGPK with a Simes procedure when argument `perm' is positive.}
  \item{fGPKM_Simes_perm}{The permutation p-value of \eqn{\textrm{fGPK}_{M}} with a Simes procedure when argument `perm' is positive.}
}
\seealso{
  \code{\link{kerTests-package}}, \code{\link{med_sigma}}
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

