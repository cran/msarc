\name{msarc.findGOterms}
\alias{msarc.findGOterms}
\title{Map UniProt Ids to GO Terms}
\description{
Maps UniProt accession ids to the (multiple) GO terms they are associated
with, and adds the map to the \code{msarc} object.  Any given accession
will most likely be associated with multiple GO terms.
}
\usage{
msarc.findGOterms(msarc,eg2uniprot=org.Hs.eg.db::org.Hs.egUNIPROT,
                  eg2go=org.Hs.eg.db::org.Hs.egGO,minCount=10)
}
\arguments{
  \item{msarc}{the \code{msarc} object to add GO terms to.}
  \item{eg2uniprot}{an \code{AnnDbBimap} mapping Entrez gene IDs to Uniprot IDs.}
  \item{eg2go}{an \code{AnnDbBimap} mapping Entrez gene IDs to GO categories.}
  \item{minCount}{GO categories with fewer than \code{minCount} members in
                  the UniProt IDs associated with this object will
                  be discarded from the set of "interesting" categories.}
}
\value{the modified \code{msarc} object.}
\details{The \code{eg2uniprot} and \code{eg2go} tables can be found in the
annotation packages for various species.  For example, the human and mouse
packages are 
\code{org.Hs.eg.db} and \code{org.Mm.eg.db}, respectively.

This function is a bit slow.}
\note{It is normal if a few UniProt accessions cannot be mapped to Entrez
IDs, or from there to GO terms.  The unmapped accessions will be listed
after the mapping is complete, with the message "missing UniProt IDs: ...".
}
\references{
\cite{The Gene Ontology Consortium, "Gene Ontology: tool for the
unification of biology". Nature Genetics 25:25-29 (2000)}
}
\author{Gord Brown}
\examples{
# Load a data set from a mass spec experiment
data(sample_subtracted,package="msarc")

# run the mapping stage
\dontrun{sample_go <- msarc.findGOterms(sample_subtracted)}
\dontshow{data(sample_goterms,package="msarc")}
}
\keyword{manip}
