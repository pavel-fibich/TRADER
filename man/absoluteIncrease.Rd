\name{absoluteIncrease}
\alias{absoluteIncrease}
\alias{FraverWhite}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Analysis by Fraver & White 2005 called "absolute increase"
%%  ~~function to do ... ~~
}
\description{Absolute-increase method is the alternative to percent-increase method. In cases where species autecology (mean growth rate, species sensitivity, and range of growth responses) is well known, it is possible to determine the absolute threshold for release detection, instead of thresholds based on relative growth. Empirically determined absolute-increase threshold for each species roughly corresponded to 1.25 times the standard deviation (Fraver & White 2005). The absolute-increase method has only one threshold, and no distinction is made between moderate and major releases.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
absoluteIncrease(data, abs = NULL, abs.threshold = NULL, 
  m1 = 10, m2 = 10, buffer = 2, gfun = mean, length = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{abs}{Optional parameter usable for precomputed absolute increases (data frame).
%%     ~~Describe \code{abs} here~~
}
  \item{abs.threshold}{Threshold of absolute-increase, see destription.
%%     ~~Describe \code{abs.threshold} here~~
}
  \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (excluding target year) for period subsequent the potential release.
%%     ~~Describe \code{m2} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
  \item{length}{Determines how many years have to be given critera exceeded to be considered as release.
%%     ~~Describe \code{length} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{releases }{By length and buffer filtred absolute increases.}
\item{years }{Release years per tree.}
\item{years_list_total }{Number of releases per year.}
\item{pgc}{Reduced absolute increase values.}
\item{all_releases }{All absolute increases above threshold.}
%% ...
}
\references{Fraver, S. & White, A.S. 2005. Identifying growth releases in dendrochronological studies of forest disturbance. Canadian Journal of Forest Research-Revue Canadienne De Recherche Forestiere, 35, 1648-1656.
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\seealso{\code{\link{absoluteIncreaseALL}}, \code{\link{plotRelease}}, \code{\link{reduceByLB}}
}
\examples{
data(relData)

abs<-absIncrease(relData1)
mabs.threshold<- absTreshold(abs)
fw <- absoluteIncrease(relData1,abs,mabs.threshold)
plotRelease(relData1,abs,fw, 1, method="FraverWhite")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
