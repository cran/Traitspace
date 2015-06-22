\name{check}
\alias{check}
\title{
	Checks the input data 
}
\description{
	Performs basic checks on the data and arranges it in a format that can be used as an input into the remaining functions of this package. 
}
\usage{
	check(level_1, level_2, level_3, site, N)
}

\arguments{
  \item{level_1}{
	A column containing the names of the tree species
}
  \item{level_2}{
	Column/s containing the trait values
}
  \item{level_3}{
	Column/s containing enviromental gradient/s
}
  \item{site}{
	A column containing the site names.
}
  \item{N}{
	Size of the simulated trait sample.
}
}
\value{
	A list of transformed data that can be used as an input in the remaining functions of this package.
}
\details{
	Transforms the existing data into appropriate format. This includes: 1) transform level_1 into factors; 2) transform level_2 and level_3 into dataframes; 3) generate a new factor site.name and a new dataframe site by the input site; 4) check the dimentions of these data and 5) make sure level_2 does not has negative value. 
}

\examples{
data(spdata)
species<-spdata$species  #species column
trt<-cbind(spdata$t1,spdata$t2) #two traits
env<-spdata$env     #one env gradient
site<-spdata$site   #site information

check(species, trt, env, site)
}
