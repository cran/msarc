\name{msarc.copyColors}
\alias{msarc.copyColors}
\title{Copy \code{msarc} Color Palette}
\description{
If two or more \code{msarc} diagrams are presented, it may be helpful if GO
categories that occur in multiple diagrams are the same color.  This
functions allow the copying of the color palette from one \code{msarc} object to
another, so that when the second is plotted, it will resemble the first.
}
\usage{
msarc.copyColors(target,source)
}
\arguments{
  \item{target}{an \code{msarc} object to load the color palette into.}
  \item{source}{an \code{msarc} object from which to get a color palette.}
}
\value{
the modified target \code{msarc} object.
}
\note{\code{msarc.copyColors} can only be applied
to source \code{msarc} objects for which \code{msarc.plotSVG} has already been
run.
}
\author{Gord Brown}
\examples{
data(sample_initial,package="msarc")
data(sample_complete,package="msarc")
sample_initial <- msarc.copyColors(sample_initial,sample_complete)
}
\keyword{dplot}
\keyword{color}
