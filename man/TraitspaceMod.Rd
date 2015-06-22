\name{TraitspaceMod}
\alias{TraitspaceMod}
\title{Modified Traitspace Model}
\description{
Implements the modified version of the Traitspace model of community assembly.
}
\usage{
TraitspaceMod(level_1, level_2, level_3, site, N = 100)
}

\arguments{
  \item{level_1}{
	The data column containing species names.
}
  \item{level_2}{
	The data column/s containing the trait values for one/multiple traits. One column per trait.
}
  \item{level_3}{
	The data column/s containing the value of the enviroment gradient/s. One column per gradient.
}
  \item{site}{
	The data column containing names of the sites
}
  \item{N}{
	Size of the simulated trait sample per site
}
}

\value{
A list which is an object of the "traitspace" class.
\item{BIC_TE }{The BIC value for the best gaussian mixture model fitted (using package mcluse)  to the trait data in step 1A. A separate model is fitted for each trait.}
\item{BIC_TS}{The BIC value for the best gaussian mixture model fitted (using package mclust) for each species in step 1B.}
\item{Predicted relative abundances }{A matrix containing the predicted relative abundances}
\item{Predicted species distribution }{A matrix containing the predicted species distribution}
}

\references{
	Laughlin, D. C., Joshi, C., Richardson, S. J., Peltzer, D. A., Mason, N. W. H., & Wardle, D. A. (2015). Quantifying multimodal trait distributions improves trait-based predictions of species abundances and functional diversity. Journal of Vegetation Science, 26(1), 45-57. 

	Laughlin, D. C., Joshi, C., Bodegom, P. M., Bastow, Z. A., & Fule, P. Z. (2012). A predictive model of community assembly that incorporates intraspecific trait variation. Ecology Letters, 15(11), 1291-1299.
}

\seealso{
\code{\link{Traitspace}}, \code{\link{TraitspaceMod}}
}
\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information
result2<-TraitspaceMod(species, trt, env, site)
result2
}

