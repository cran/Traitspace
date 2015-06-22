\name{Traitspace}
\alias{Traitspace}
\title{Traitspace Model}
\description{
Implements a predictive model of community assembly called the Traitspace.
}
\usage{
Traitspace(level_1, level_2, level_3, site, N = 100, linear = FALSE)
}
%- maybe also 'usage' for other objects documented here.
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
  \item{linear}{
	Determines whether the trait-environment regression model is linear or quadratic. By default, FALSE, i.e. fits a quadratic model by default.
}
}
\value{
A list which is an object of the 'traitspace' class.
\item{r.squared TE }{The R-squared values for the Trait environment relgression models fitted in step 1A. A separate model is fitted for each trait.}
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
result1<-Traitspace(species, trt, env, site)
result1
}