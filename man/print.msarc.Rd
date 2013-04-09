\name{print.msarc}
\alias{print.msarc}
\alias{summary.msarc}
\title{Display an \code{msarc} Object}
\description{
These functions display an \code{msarc} object in a readable form.
}
\usage{
\method{print}{msarc}(x, \dots)
\method{summary}{msarc}(object, \dots)
}
\arguments{
  \item{x}{an \code{msarc} object}
  \item{object}{an \code{msarc} object}
  \item{\dots}{other parameters to \code{print} or \code{summary}}
}
\details{
Invoked automatically by \code{print} or \code{summary} when applied to
an \code{msarc} object.  \code{summary} provides more details.
}
\value{\code{print.msarc} invisibly returns a string representation of the
object.  \code{summary.msarc} returns nothing.}
\author{Gord Brown}
\seealso{
See also \code{\link{print}} and \code{\link{summary}}.
}
\examples{
data('sample_complete',package="msarc")
print(sample_complete)
summary(sample_complete)
}
\keyword{print}
\keyword{methods}
\keyword{IO}
