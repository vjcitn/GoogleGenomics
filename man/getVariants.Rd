% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/variants.R
\name{getVariants}
\alias{getVariants}
\title{Get variants from Google Genomics.}
\usage{
getVariants(datasetId = "10473108253681171589", chromosome = "22",
  start = 16051400, end = 16051500, fields = NULL, converter = c)
}
\arguments{
\item{datasetId}{The dataset ID.}

\item{chromosome}{The chromosome.}

\item{start}{Start position on the chromosome in 0-based coordinates.}

\item{end}{End position on the chromosome in 0-based coordinates.}

\item{fields}{A subset of fields to retrieve.  The default (NULL) will
return all fields.}

\item{converter}{A function that takes a list of variant R objects and
returns them converted to the desired type.}
}
\value{
By default, the return value is a list of R objects
  corresponding to the JSON objects returned by the Google Genomics
  Variants API.  If a converter is passed, object(s) of the type
  returned by the converter will be returned by this function.
}
\description{
This function will return all of the variants that comprise the requested
genomic range, iterating over paginated results as necessary.
}
\details{
By default, this function gets variants from a small section of 1000
Genomes phase 1 variants.

Optionally pass a converter as appropriate for your use case.  By passing it
to this method, only the converted objects will be accumulated in memory.
The converter function should return an empty container of the desired type
if called without any arguments.
}
\examples{
# Authenticated on package load from the env variable GOOGLE_API_KEY.
variants <- getVariants()
summary(variants)
summary(variants[[1]])
}
\seealso{
\code{\link{getReads}} for equivalent function for reads, and
  \code{\link{variantsToVRanges}} for a converter function.
}

