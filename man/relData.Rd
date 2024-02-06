\name{relData}
\alias{relData}
\alias{relData1}
\alias{relData2}
\alias{relMissPith}
\alias{knownBL}
\docType{data}
\title{Release data
%%   ~~ data name/kind ... ~~
}
\description{ Input release data and know boundary lines.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(relData)}
\format{
\code{knownBL} data frame with published boundary lines for species and their references.
\cr
\code{relData1} example input rwl data (15 trees and 142 years).
\cr
\code{relMissPith} example of miss piths for relData1.
\cr
\code{relData2} big example input rwl data (192 spruce trees and 217 years).

}
\details{knownBL is just data frame consisting of boundary lines. relData1 and relData2 are subsests of our measurements, not published yet.
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{Own non published measurements.
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{Altman J, Fibich P, Dolezal J & Aakala T (2014) TRADER: a package for Tree Ring Analysis of Disturbance Events in R. Dendrochonologia 32: 107-112.
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(relData)

knownBL
plotFirstYears(relData1)
}
\keyword{datasets}
\keyword{disturbances}
\keyword{treerings}
