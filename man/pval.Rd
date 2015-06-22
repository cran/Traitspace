\name{pval}
\alias{pval}
\title{Permutation test on distances}
\description{
	First calls the function \emph{distTraitspace} to calculate the distances between the predicted and true/observed relative abundances (by default) or species distributions if byrow = FALSE. Then runs permutation tests to test if these distances are statistically significant and provides p-values.
}
\usage{
	pval(result, obs = NULL, byrow = TRUE, permutations = 999)
}
\arguments{
  \item{result}{
	the output from the traitspace function (class Traitspace)
}
  \item{obs}{
	The observed matrix - where, each row corresponds to a site and each column to a species - the order of sites and species should match with the order in which they appear in the predicted matrix. By default, NULL, will generate the observed matrix using the supplied trait data using the \emph{trueP} function. See the \emph{trueP} function for details.
}
  \item{byrow}{
	By default, TRUE, will compare the relative abundances. If FALSE, will compare the species distribution.
}
  \item{permutations}{
	Number of permutations, by default 999.
}
}
\value{
	A list of distances calculated using the following measures: Euclidean, Manhatten, Hellinger, Kullback-Leibler and Bhattacharya. It calculates both the average distance (averages across all sites or species) as well as individual distances. Also provides p-values corresponding to each of these distances.
}
\references{
	Basu, A., Shioya, H., & Park, C. (2011). Statistical inference: the minimum distance approach. CRC Press.

	Phipson, B., & Smyth, G. K. (2010). Permutation p-values should never be zero: calculating exact P-values when permutations are randomly drawn. Statistical applications in genetics and molecular biology, 9(1).
}

\seealso{
\code{\link{distTraitspace}}, \code{\link{Traitspace}}, \code{\link{TraitspaceMod}}
}

\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information
result1<-Traitspace(species, trt, env, site)
pval(result1)
}
