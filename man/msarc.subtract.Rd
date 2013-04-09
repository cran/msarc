\name{msarc.subtract}
\alias{msarc.subtract}
\title{Subtract Control From Experiment}
\description{
Removes Uniprot IDs from an \code{msarc} object if they also occur in a
"control" object (or a simple vector of Uniprot IDs).
}
\usage{
msarc.subtract(source, control)
}
\arguments{
  \item{source}{the \code{msarc} object of interest}
  \item{control}{the background control, either another \code{msarc} object,
                 or a simple vector of Uniprot IDs}
}
\details{
Typically this will be used to remove ``background'' proteins, such as
those obtained from an IgG control, from an experiment, to reveal those
proteins which are specific to the experiment of interest.
Customarily, a mass spec experiment will include a treated sample of some
sort, and a corresponding untreated sample.  The peptides that are identified
only in the treated sample are taken to be the interesting ones.  This
function allows the straightforward removal from the treatment object of
proteins that also occur in the untreated control.
}
\value{the modified source \code{msarc} object.}
\author{Gord Brown}
\examples{
# Load a data set and control
data('sample_initial',package="msarc")
data('control_initial',package="msarc")
sample_subtracted <- msarc.subtract(sample_initial,control_initial)
}
\keyword{manip}
