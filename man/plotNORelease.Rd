\name{plotNORelease}
\alias{plotNORelease}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot number of releases.
%%  ~~function to do ... ~~
}
\description{
Barplot number of releases according given criteria.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotNORelease(data, inyears, in2years = NULL, criteria, criteria2 = NULL, 
  store = TRUE, storedev = pdf, prefix = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{inyears}{Releases in years according \code{criteria}.
%%     ~~Describe \code{inyears} here~~
}
  \item{in2years}{Releases in years according \code{criteria2}.
%%     ~~Describe \code{in2years} here~~
}
   \item{criteria}{Threshold for detection of moderate release
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2}{Threshold for detection of major release.
%%     ~~Describe \code{criteria2} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{store}{If to save results on files.
%%     ~~Describe \code{store} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
}
\details{Plot number of releases and return data frame with release statistic.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return data frame with releases statistic per year.
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
\code{\link{plotRelease}}
}
\examples{
data(relData)

abs<-absIncrease(relData1)
abs.threshold<- absTreshold(abs)
fw <- absoluteIncrease(relData1,abs,abs.threshold)

release_list <- reduceByLB(releases=fw$releases,above=fw$all_releases,type=1)
rs<-writeReleaseStats(release_list,"Total number of releases is")
plotNORelease(relData1,rs, criteria=round(abs.threshold,3) )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ release }

