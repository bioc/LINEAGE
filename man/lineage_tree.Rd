% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lineage_tree.R
\name{lineage_tree}
\alias{lineage_tree}
\title{lineage_tree}
\usage{
lineage_tree(result)
}
\arguments{
\item{result}{The result of best_iter or multi_best_iter. Required.}
}
\value{
An object of class hclust which describes the lineage tree produced by LINEAGE.
}
\description{
Using the result of best_iter or multi_best_iter as input, lineage_tree will export  lineage tree of the lineage analysis result.
}
\details{
trace the lineage tree of the lineage analysis result
}
\examples{
data("TF1_clones")
data=TF1_clones$data
## performs a non-parallel iteration process 
result=lineage(data, repeats=30, thread=NULL)
## performs a parallel iteration process
# result=lineage(data, repeats=30, thread=10)
hc= lineage_tree(result)

}
