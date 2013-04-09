\name{msarc}
\alias{msarc}
\title{Create msarc Object From Data Frame}
\description{
Create an \code{msarc} object from a data frame.}
\usage{
msarc(df)
}
\arguments{
  \item{df}{a data frame with three columns, in this order: Uniprot ID,
            gene symbol, and score.  Column names will be ignored.}
}
\details{
This function simply loads the necessary three columns into an \code{msarc}
object and sets some default configuration values.
}
\value{an \code{msarc} object corresponding to the data frame.}
\author{Gord Brown}
\examples{
# Create an msarc object from a data frame
data(sample_df,package='msarc')
msarc_raw <- msarc(sample_df)
}
\keyword{IO}
\keyword{file}
