\name{msarc.plotHeatmap}
\alias{msarc.plotHeatmap}
\title{Correlation Heat Maps for Mass Spec Experiments}
\description{Given 3 or more mass spec experiments as \code{msarc} objects,
this function draws a heat map of the similarity among the experiments.
Similarity may be calculated based on similarity of scores, or simply by
the presence or absence of individual UniProt accession id's.
}
\usage{
msarc.plotHeatmap(msalist, method = "euclidean", useScore = T, ...)
}
\arguments{
  \item{msalist}{a list of \code{msarc} objects.}
  \item{method}{Correlation method to pass to \code{dist}.  Acceptable values
                are whatever \code{dist} supports, currently "euclidean",
                "maximum", "manhattan", "canberra", "binary" or "minkowski".
                See the documentation for \code{stats:dist} for details.}
  \item{useScore}{If true (the default), use the score of each peptide in
                  computing the correlation.  If false, just use the presence
                  or absence of each protein in each experiment.}
  \item{\dots}{Other parameters to pass to \code{heatmap.2} from package 
               \code{gplots}.}
}
\value{the distance matrix calculated by \code{dist}.}
\details{The samples must have distinct filenames, or this function will
fail.  You can load the samples from mass spec files, or just explicitly
set object$filename for each \code{msarc} object.  These filenames will also
be used as labels in the heat map.
}
\references{
Gregory R. Warnes. Includes R source code and/or documentation
contributed by: Ben Bolker, Lodewijk Bonebakker, Robert Gentleman,
Wolfgang Huber Andy Liaw, Thomas Lumley, Martin Maechler, Arni
Magnusson, Steffen Moeller, Marc Schwartz and Bill Venables (2011).
gplots: Various R programming tools for plotting data. R package
version 2.10.1. http://CRAN.R-project.org/package=gplots
}
\author{Gord Brown}
\seealso{
See also \code{heatmap.2} from package \code{gplots} and
\code{dist} from package \code{stats}.
}
\examples{
data('sample_cluster',package="msarc")
\dontrun{msarc.plotHeatmap(sample_cluster)}
}
\keyword{hplot}
