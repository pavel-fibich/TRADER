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
\description{ Input release data and know boundary lines
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
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(relData)

knownBL
plotFirstYears(relData1)
}
\keyword{datasets}
