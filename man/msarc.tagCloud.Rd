\name{msarc.tagCloud}
\alias{msarc.tagCloud}
\title{Draw Tag Cloud}
\description{
Given an \code{msarc} object, draw the corresponding tag cloud.}
\usage{
msarc.tagCloud(msarc, pal=NA,...)
}
\arguments{
  \item{msarc}{an \code{msarc} object to draw.}
  \item{pal}{an RColorBrewer palette to use for word colours.  Default is
             \code{brewer.pal(10,"Spectral")}.}
  \item{...}{additional arguments passed to \code{wordcloud}.}
}
\value{Does not return a value.}
\details{The main purpose of this function is to draw a tag cloud (word cloud)
of the identified proteins, with size indicating Mascot score.

The tag cloud will be drawn on the current device; it is the user's
responsibility to open a connection to a file, or other device as applicable.}
\author{Gord Brown}
\examples{
data('sample_complete',package="msarc")
\dontrun{msarc.tagCloud(sample_complete)}
}
\keyword{hplot}
