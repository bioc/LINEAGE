% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{learn_distance}
\alias{learn_distance}
\title{learn_distance}
\usage{
learn_distance(c, pclusters, diss)
}
\arguments{
\item{c}{Integer. 1:(numer of selected subspaces). Required.}

\item{pclusters}{A list containing clustering results in selected subspaces with kmeans. Required.}

\item{diss}{A list containing Euclidean distance matrixes of selected subspaces. Required.}
}
\value{
A dataframe containing a more integrative distance matrix.
}
\description{
By integrating distance information and consensus information, learn_distance generate a more integrative distance matrix.
}
\details{
Distance calculation in subspaces
}
\examples{
data("pcluster")
data("diss")
data("cs")
c=1:length(cs)
dis=learn_distance(c,pcluster,diss)

}
