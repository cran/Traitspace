\name{print.traitspace}
\alias{print.traitspace}
\title{
prints an object of class "traitspace". This function prints out the summary of the results of the Traitspace of the TraitspaceMod functions. See details.
}
\description{
This function prints out the summary of the results of the Traitspace of the TraitspaceMod functions. See details.
}
\usage{
\method{print}{traitspace}(x,...)
}
\arguments{
  \item{x}{
	the object with "traitspace" class
}
\item{...}{further arguments passed to or from other methods}
}
\details{
	Print out the R-squared values, the BICs, the predicted matrix and the observed matrix. If the observed matrix is not explicitely supplied, then the Traitspace/TraitspaceMod function will generate the observed matrix using the supplied trait data using the \emph{trueP} function and print a warning to this effect. See the \emph{trueP} function for details.
}
\value{
	The object with "traitspace" class
}
\references{
	Laughlin, D. C., Joshi, C., Richardson, S. J., Peltzer, D. A., Mason, N. W. H., & Wardle, D. A. (2015). Quantifying multimodal trait distributions improves trait-based predictions of species abundances and functional diversity. Journal of Vegetation Science, 26(1), 45-57. 
	
	Laughlin, D. C., Joshi, C., Bodegom, P. M., Bastow, Z. A., & Fule, P. Z. (2012). A predictive model of community assembly that incorporates intraspecific trait variation. Ecology Letters, 15(11), 1291-1299.
}

\seealso{
\code{\link{Traitspace}}, \code{\link{TraitspaceMod}}, \code{\link{trueP}}
}
\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information
result1<-Traitspace(species, trt, env, site)
print(result1)
result1
}