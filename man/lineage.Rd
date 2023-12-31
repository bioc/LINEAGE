% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lineage.R
\name{lineage}
\alias{lineage}
\title{lineage}
\usage{
lineage(data, repeats = 30, thread = 10)
}
\arguments{
\item{data}{A dataframe containing mitochondrial variants frequency matrix, where a column represents a single cell and a row represents variants frequency of a specific mitochondrial genotype, and two other columns "altAllele" and "refAllele". 
"altAllele" column represents the mutant allele; "refAllele" column represents the reference allele. Required.}

\item{repeats}{Number of iterations. Default:30.}

\item{thread}{Number of threads to use. NULL for non-parallel iterative optimization. Default:10.}
}
\value{
A Rdata with the following elements.
\item{best}{List, containing the best result in all repeats with max Sscore}
\item{label}{List, containing the name/id and inferredlineage label of each sample}
\item{suggest}{Character, recommended dimensional reduction method, tsne or umap}
\item{results}{List, containing results of all repeats with different 'centers' and 'num of markers'}
\item{scores}{Numeric, Sscores of all repeats}
}
\description{
'lineage' can perform label-free identification of endogenous informative single cell mitochondrial RNA mutation for lineage analysis and clonal evolution. 
Using mitochondrial genotype matrix as input, select the informative variants of mitochondrial RNA for clones and perform lineage analysis with a consensus clustering method.
}
\examples{
data("TF1_clones")
data=TF1_clones$data
## performs a non-parallel iteration process
result=lineage(data, repeats=30, thread=NULL)
## performs a parallel iteration process 
# result=lineage(data, repeats=30, thread=10)

}
