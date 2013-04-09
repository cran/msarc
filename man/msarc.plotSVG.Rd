\name{msarc.plotSVG}
\alias{msarc.plotSVG}
\title{Draw \code{msarc} Diagram}
\description{
Given an \code{msarc} object, draw the corresponding SVG-formatted diagram.
}
\usage{
msarc.plotSVG(msarc, file = "msarc.svg")
}
\arguments{
  \item{msarc}{an \code{msarc} object to draw.}
  \item{file}{a filename to write the diagram to.  Will overwrite existing
                files without warning.}
}
\value{Returns the \code{msarc} object, augmented with the set of colors used.}
\details{The main purpose of this function is simply to draw the diagram, after
a presumably interesting set of GO terms has been chosen.

Because GO category names get longer as the categories get smaller, there
usually isn't room to draw them in a non-overlapping way on the diagram.
For sub-categories, single letters are added as category labels, and the
names are printed to the R console.  The user can add names of their choice,
and find a way to make them fit manually.

The object is
returned with colors added, in case the user wants to draw multiple diagrams
with the same colors for the same categories.  Draw the first object, saving
it to a variable, then create the second and use \code{msarc.copyColors} to
copy the color palette from the first to the second.  Save the second, copy
its color palette to the third, and so on.  In this way, GO categories will
have the same color in all the diagrams.  It's a bit tedious, but there isn't
an obvious other way to achieve this.
}
\author{Gord Brown}
\examples{
data('sample_complete',package="msarc")
\dontrun{msarc.plotSVG(sample_complete,file="thing.svg")}
}
\keyword{hplot}
