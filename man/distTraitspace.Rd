\name{distTraitspace}
\alias{distTraitspace}
\title{
	Calculate the distances
}
\description{
	Calculates the distances between the predicted and true/observed relative abundances (by default) or species distributions if byrow = FALSE.
}
\usage{
distTraitspace(result, obs = NULL, byrow = TRUE)
}
\arguments{
  \item{result}{
	The output from the traitspace function (class traitspace)
}
\item{obs}{
	The observed matrix - where, each row corresponds to a site and each column to a species - the order of sites and species should match with the order in which they appear in the predicted matrix. By default, NULL, will generate the observed matrix using the supplied trait data using the \emph{trueP} function. See the \emph{trueP} function for details.
}

  \item{byrow}{
	By default, TRUE, will compare the relative abundances. If FALSE, will compare the species distribution.
}
}
\value{
	A list of distances calculated using the following measures: Euclidean, Manhatten, Hellinger, Kullback-Leibler and Bhattacharya. It calculates both the average distance (averages across all sites or species) as well as individual distances.
}
\references{
	
	Basu, A., Shioya, H., & Park, C. (2011). Statistical inference: the minimum distance approach. CRC Press.
}

\seealso{
\code{\link{pval}}, \code{\link{Traitspace}}, \code{\link{TraitspaceMod}}, \code{\link{trueP}}
}
\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information
result1<-Traitspace(species, trt, env, site)
distTraitspace(result1)
}

