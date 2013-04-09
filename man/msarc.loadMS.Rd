\name{msarc.loadMS}
\alias{msarc.loadMS}
\title{Create msarc Object From Mass Spec Data}
\description{
Create an \code{msarc} object from a mass spectrometry experiment spreadsheet.
The spreadsheet must be saved in tab-separated text format.}
\usage{
msarc.loadMS(file, onlyDiff = T, config=list())
}
\arguments{
  \item{file}{the name of the file to load.}
  \item{onlyDiff}{If the experiment is a SILAC experiment, and \code{onlyDiff}
                  is true, only proteins for which both a heavy and a light
                  version was seen will be loaded.  If false, all proteins
                  will be included.  It is usually best to leave this parameter
                  \code{TRUE}.}
  \item{config}{If the user needs to override column headings in the input
                file, a named list may be used to specify the column headings.
                See below for details.}
}
\details{The input file will be parsed according to the following rules:
\enumerate{
  \item The first line is taken to be column headers.
  \item Lines beginning with white space are skipped.  (In the output of the
        mass spec software this is based on, these lines are the descriptions
        of the individual peptides identified; we only keep the lines
        describing the whole proteins.)
  \item Based on the column headers, three columns are retained: the UniProt
        ID, the gene symbol and the score.  The default column heads are
        "Accession", "Description" and "Score".  The "Description" column
        is scanned for a pattern like "- [XXX_YYYY]"; the "XXX" is 
        interpreted as the gene symbol.
}
In addition, if the file has a column named "Heavy/Light", it is taken to be
a SILAC experiment; rows without a value in this column are discarded
unless \code{onlyDiff} is \code{FALSE}.

Column names may be overridden via the configuration list.  The defaults are
as above; they may be overridden by setting these names in the config list:
"accessionCol", "descriptionCol", "scoreCol", and "heavyCol".
}
\value{an \code{msarc} object corresponding to the file.}
\author{Gord Brown}
\examples{
# Load a data set from a mass spec experiment
p <- system.file("extdata",package="msarc")
samp_fn <- file.path(p,"sample_msdata.txt.gz")
sample <- msarc.loadMS(samp_fn)

# Load a data set, with a configuration list
samp_fn <- file.path(p,"sample_colnames.txt.gz")
sample <- msarc.loadMS(samp_fn,config=list("accessionCol"="Uniprot_ID"))
}
\keyword{IO}
\keyword{file}
