\name{plotEach}
\alias{plotEach}
\title{
Plot traitspace results one by one
}
\description{
	Plots the results for each species/site in a separate window. Plots the predicted relative abundances and the observed relative abundances (by default) or the predicted species distributions and the observed species distributions if byrow=FALSE.
}
\usage{
plotEach(result, obs = NULL, byrow = TRUE, compare = TRUE)
}
\arguments{
   \item{result}{
	The output from the traitspace function (class traitspace)
}
   \item{obs}{
	The observed matrix - where, each row corresponds to a site and each column to a species - the order of sites and species should match with the order in which they appear in the predicted matrix. By default, NULL, will generate the observed matrix using the supplied trait data using the \emph{trueP} function. See the \emph{trueP} function for details.
}
  \item{byrow}{
	By default, TRUE, will plot the relative abundances. If FALSE, will plot the species distribution.
}
  \item{compare}{
	By default, TRUE, will plot both the predicted as well as the observed values. If FALSE, will only plot the predicted values.
}
}
\value{
	Traitspace plots.
}


\references{
	Laughlin, D. C., Joshi, C., Richardson, S. J., Peltzer, D. A., Mason, N. W. H., & Wardle, D. A. (2015). Quantifying multimodal trait distributions improves trait-based predictions of species abundances and functional diversity. Journal of Vegetation Science, 26(1), 45-57. 
	
	Laughlin, D. C., Joshi, C., Bodegom, P. M., Bastow, Z. A., & Fule, P. Z. (2012). A predictive model of community assembly that incorporates intraspecific trait variation. Ecology Letters, 15(11), 1291-1299.
}

\seealso{
\code{\link{plotCorr}}, \code{\link{plotEach}}, \code{\link{Traitspace}}, \code{\link{TraitspaceMod}}, \code{\link{trueP}}
}
\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information
result1<-Traitspace(species, trt, env, site)
plotEach(result1)
}