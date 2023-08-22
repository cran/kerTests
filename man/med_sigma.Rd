\name{med_sigma}
\alias{med_sigma}
\title{Compute the Median Heuristic}
\description{This function provides the most popular bandwidth of the Gaussian kernel, the median heuristic.}
\usage{
med_sigma(X, Y)
}
\arguments{
  \item{X}{The first samples.}
  \item{Y}{The second samples.}
}
\value{
  Returns a numeric value, the median heuristic, which is the median of all pairwise distances among pooled observations, as a bandwidth of the kernel.
}
\seealso{
  \code{\link{kerTests-package}}, \code{\link{kertests}}
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

sigma = med_sigma(X, Y) # median heuristic (bandwidth)
}
