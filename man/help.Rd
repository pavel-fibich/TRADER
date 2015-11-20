\name{help}
\alias{PGC}
\alias{help}
\alias{PGCreleases}
\alias{PGCreleasesSplechtna}
\alias{priorGrowth}
\alias{absIncrease}
\alias{writeReleaseStats}
\alias{removeMajorFromModerate}
\alias{relListToDataFrame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Help functions.
%%  ~~function to do ... ~~
}
\description{ Help function used in other functions.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
absIncrease(data, m1 = 10, m2 = 10, gfun = mean)
PGC(data, m1 = 10, m2 = 10, gfun = mean)
PGCreleases(change, criteria = 0.2)
PGCreleasesSplechtna(change, criteria = 0.5)
priorGrowth(data, m1 = 10, m2 = 10, gfun = mean)
writeReleaseStats(release_list, mytext)
removeMajorFromModerate(mod,maj,zero,on)
relListToDataFrame(release_list,data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{Data frame returned by read.* function of dplR.
%%     ~~Describe \code{data} here~~
}
  \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m2} here~~
}
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
\item{criteria}{Threshold for detection of moderate release.
%%     ~~Describe \code{criteria} here~~
}
\item{change}{Percentage growth change.
%%     ~~Describe \code{criteria} here~~
}
\item{release_list}{List of releases per tree.
%%     ~~Describe \code{criteria} here~~
}
\item{mod}{List of moderate releases per tree.}
\item{maj}{List of major releases per tree.}
\item{zero}{Value for the beginning of the list.}
\item{on}{List of growth changes per tree.}
\item{mytext}{Prefix of the info text.}
}
\details{Just helping functions.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Various.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Altman J, Fibich P, Dolezal J & Aakala T (2014) TRADER: a package for Tree Ring Analysis of Disturbance Events in R. Dendrochonologia 32: 107-112.
%% ~put references to the literature/web site here ~
}
\author{Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>
%%  ~~who you are~~
}
\note{Check the reference.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{doAll}}
}
\examples{
data(relData)

abs<-absIncrease(relData1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
