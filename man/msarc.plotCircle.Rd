\name{msarc.plotCircle}
\alias{msarc.plotCircle}
\title{Draw \code{msarc} Diagram without GO categories}
\description{
Given an \code{msarc} object, draw the corresponding SVG-formatted circle
diagram, without GO categories.
}
\usage{
msarc.plotCircle(msarc, file = "nocat.svg", col = c(0,255,0))
}
\arguments{
  \item{msarc}{an \code{msarc} object to draw.}
  \item{file}{a filename to write the diagram to.  Will overwrite existing
                files without warning.}
  \item{col}{a 3-element list of RGB values (0-255).}
}
\value{Returns the \code{msarc} object.}
\details{The main purpose of this function is simply to draw the diagram,
without GO categories.
}
\author{Gord Brown}
\examples{
data('sample_complete',package="msarc")
\dontrun{msarc.plotCircle(sample_complete,file="thing.svg")}
}
\keyword{hplot}
