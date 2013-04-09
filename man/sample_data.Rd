\name{sample_df}
\alias{sample_df}
\alias{control_df}
\docType{data}
\title{
Sample Data for the msarc Package
}
\description{
These two mass spec data sets are the experiment and control results from a 
mass spec of a GREB1 ChIP (sample_df) and an IgG ChIP (control_df).
}
\usage{data(sample_df)
data(control_df)}
\format{
  Data frames with the following 3 columns:
  \describe{
    \item{\code{uniprot}}{the UniProt ID of the protein}
    \item{\code{id}}{the symbolic name of the protein}
    \item{\code{score}}{the MASCOT score of the protein}
  }
}
\source{
From Mohammed, H., D'Santos, C., Serandour, A. A., Ali, H. R., Brown, G. D., Atkins, A., et al. (2013). Endogenous Purification Reveals GREB1 as a Key Estrogen Receptor Regulatory Factor. Cell reports, 3(2), 342-349. doi:10.1016/j.celrep.2013.01.010
}
\examples{
data(sample_df,package="msarc")
data(control_df,package="msarc")
}
\keyword{datasets}
