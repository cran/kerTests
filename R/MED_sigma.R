# function to get the median of all pairwise distances among observations for the bandwidth
med_sigma = function(X, Y) {
  aggre = rbind(X,Y)
  med = median(dist(aggre)^2)
  return(sqrt(med))
}
