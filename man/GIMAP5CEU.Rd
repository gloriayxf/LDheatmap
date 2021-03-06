\name{GIMAP5.CEU}
\alias{GIMAP5.CEU}
\docType{data}
\title{ Example data set for LDheatmap }
\description{
SNP genotypes on HapMap founders from the CEU population
for SNPs spanning the GIMAP5 gene.
}
\usage{data(GIMAP5.CEU)}
\format{
  GIMAP5.CEU is a list with two elements: snp.data and snp.support.
snp.data is a \code{snp.matrix}
object containing the SNP genotypes. Rows correspond to 
subjects and columns correspond to  SNPs.
snp.support is a data frame with the following columns:
\tabular{rlll}{
         [,1] \tab dbSNPalleles   \tab character \tab alleles at each SNP\cr
         [,2] \tab Assignment \tab character \tab same as dbSNPalleles\cr
         [,3] \tab Chromosome   \tab character \tab chromosome (chr7 for all)\cr
         [,4] \tab Position    \tab numeric \tab physical position\cr
         [,5] \tab Strand   \tab character \tab strand (all "+") 
       }
}
\details{
SNP genotypes from HapMap release 27 
for SNPs in a 10KB region spanning
the GIMAP5 gene. Data are on founders from the CEU population, 
described as Utah residents with Northern and Western European ancestry 
from the CEPH collection.
Only those SNPs with minor allele frequency greater
  than 5\% in all populations were retained.
The base positions are from NCBI build 36
(UCSC genome hg18).
}
\source{ International HapMap Project \url{www.hapmap.org}
}
\references{ The International HapMap Consortium. A haplotype map of
the human genome. Nature 437, 1299-1320. 2005.
}
\seealso{ \code{\link{GIMAP5}}}
\examples{ 
require(snpStats) # for the SnpMatrix data structure
data(GIMAP5.CEU) 
LDheatmap(GIMAP5.CEU$snp.data,GIMAP5.CEU$snp.support$Position)
}
\keyword{datasets}


