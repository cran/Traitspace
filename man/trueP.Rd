\name{trueP}
\alias{trueP}
\title{estimate observed matrix}
\description{
The observed relative abundances/species distributions are calculated from the input data. 
}
\usage{
trueP(level_1, site.name)
}
\arguments{
  \item{level_1}{
	A column containing the names of the tree species
}
  \item{site.name}{
	A column containing the site names.
}
}
\details{
	In situations where the observed abundance data are not available, this function can be used to estimate the true abundances using the trait data. The abundances are estimated as the relative frequency of the species within a site (for relative abundance) and as the relative frequency of the species across sites (for species distribution). Relative frequency may not necessarily be a desiratble measure of abundance (often relative basel area is preferred, for example) and therefore a warning is issued when this function is used. We recommend the use of actual observed abundances as far as possible. These should be manually entered using the 'obs' option.
}
\value{
	A matrix containing the estimated observed relative abundances and a matrix containing the estimated observed species distributions.
}

\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
data(spdata)
species<-spdata$species  #species column
site<-spdata$site   #site information

trueP(species, site)
}