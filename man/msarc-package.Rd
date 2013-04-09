\name{msarc-package}
\alias{msarc-package}
\docType{package}
\title{msarc: Mass Spectrometry Experiment Plots}
\description{Plots the results of mass spectrometry experiments in a circular
format.  Lines represent identified proteins, with the length of the
line indicating the relevant score, typically the likelihood that the ID is
correct, or change relative to some reference.  Proteins are clustered by GO
categories.}
\details{
There are several steps to generating mass spec plots:
\enumerate{
  \item Load the mass spec result file into R;
  \item Subtract the proteins that also occur in the control sample;
  \item Cluster the proteins into GO categories;
  \item Filter the list of categories to be shown;
  \item Plot the results.
}
These steps are largely independent; any one may be replaced with a different
function, with some work.  For example, the default clustering is
according to Gene Ontology terms, but another clustering is also fine.
Similarly, although the package is designed for mass spec experiments, it
could in principle be used with other sorts of data, provided that it is
based on Uniprot IDs, corresponding protein symbols (e.g. CTCF), and some
sort of score.

The output format is svg (scalable vector graphics), suitable for editing
with Adobe Illustrator or similar.

Please be aware that
this program does \emph{not} produce finished, polished figures.  They usually
need some editing to look right.  Also, a few iterations are usually needed
to decide exactly which GO terms are most meaningful (at the step where you
manually select the set of interest).

Caveat:  These plots mis-represent the clustering into GO categories.  Most
proteins are in more than one category; most GO categories have more than one
parent.  These plots do not reflect this, but instead show any given protein
in only one category (the one with fewest members in this plot), and any given
GO category under only one parent (the one with fewest...).
}
\author{
Gord Brown, Hisham Mohammed

Maintainer: Gord Brown <gordon.brown@cruk.cam.ac.uk>
}
\references{
This package was inspired in part by the Circos package \url{http://circos.ca/},
by Martin Krzywinski (\cite{Martin I Krzywinski, Jacqueline E Schein, Inanc
Birol, Joseph Connors, Randy Gascoyne, Doug Horsman, Steven J Jones, and
Marco A Marra, "Circos: An information aesthetic for comparative genomics".
Genome Research 19 (2000), pages 1639--1645}).
}
