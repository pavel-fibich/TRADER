\name{TRADER-package}
\alias{TRADER-package}
\alias{TRADER}
\docType{package}
\title{
Tree Ring Analysis of Disturbance Events in R
}
\description{
The TRADER package provides only one way for disturbance reconstruction from tree-ring data. TRADER is a unique package bringing the first instrument for analysis of forest disturbance history in complementary ways. Final advantage of TRADER is the possibility of results comparison between individual studies. This is enabled by easy parameter changes in data processing, as well as by clearly arranged graphical and tabular outputs. We developed TRADER in open source R environment, to further support the on-going open-source software development for dendrochronological methods and data availability.
}
\details{
\tabular{ll}{
Package: \tab TRADER\cr
Type: \tab Package\cr
Version: \tab 1.0.5\cr
Date: \tab 2014-11-26\cr
License: \tab GPL-2 | GPL-3\cr
}
library(TRADER)
}
\author{
Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>

Maintainer: Pavel Fibich <pavel.fibich@prf.jcu.cz>

}
\references{
Nowacki, G.J. & Abrams, M.D. 1997. Radial-growth averaging criteria for reconstructing disturbance histories from presettlement-origin oaks. Ecological Monographs, 67, 225-249.
%%
\cr
Black, B.A. & Abrams, M.D. 2003. Use of boundary-line growth patterns as a basis for dendroecological release criteria. Ecological Applications, 13, 1733-1749.
\cr
Fraver, S. & White, A.S. 2005. Identifying growth releases in dendrochronological studies of forest disturbance. Canadian Journal of Forest Research-Revue Canadienne De Recherche Forestiere, 35, 1648-1656.
\cr
Splechtna, B.E., Gratzer, G. & Black, B.A. 2005. Disturbance history of a European old-growth mixed-species forest - A spatial dendro-ecological analysis. Journal of Vegetation Science, 16, 511-522.
}

\keyword{ package }
\seealso{
\code{\link{doAll}}
}
\examples{
data(relData)

plotFirstYears(relData1)
plotGrowth(relData1)
doAll(relData1)

absoluteIncreaseALL(relData1,length=3,buffer=4,storedev=jpeg)
growthAveragingALL(relData1,length=3,buffer=4,storedev=pdf)
boundaryLineALL(relData1,length=2,buffer=2,storedev=pdf,boundary=function(x) {5.0067*exp(-0.664*x)} )  
splechtnaALL(relData1,length=3,buffer=4,storedev=pdf,boundary=function(x) {5.0067*exp(-0.664*x)} )
doAll(relData1,length=3,buffer=4,storedev=pdf)

knownBL
}
