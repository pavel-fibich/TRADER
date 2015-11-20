\name{absoluteIncreaseALL}
\alias{absoluteIncreaseALL}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{Overal function for Fraver & White 2005 method called "absolute increase"
%%  ~~function to do ... ~~
}
\description{Absolute-increase method is the alternative to percent-increase method. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
absoluteIncreaseALL(data, abs = NULL, abs.threshold = NULL, 
  m1 = 10, m2 = 10, buffer = 2, prefix = "ai", drawing = TRUE, 
  gfun = mean, length = 2, storedev = jpeg, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{abs}{Optional parameter usable for precomputed absolute increases.
%%     ~~Describe \code{abs} here~~
}
\item{abs.threshold}{Threshold of absolute-increase, see destription.}
  \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (excluding target year) for period subsequent the potential release.
%%     ~~Describe \code{m2} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{drawing}{If TRUE, graphical outputs for individual trees.
%%     ~~Describe \code{drawing} here~~
}
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
  \item{length}{Determines how many years have to be given critera exceeded to be considered as release.
%%     ~~Describe \code{length} here~~
}
  \item{storedev}{
%%     ~~Describe \code{storedev} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{In cases where species autecology (mean growth rate, species sensitivity, and range of growth responses) is well known, it is possible to determine the absolute threshold for release detection, instead of thresholds based on relative growth. Empirically determined absolute-increase threshold for each species roughly corresponded to 1.25 times the standard deviation (Fraver & White 2005). The absolute-increase method has only one threshold, and no distinction is made between moderate and major releases.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Write many tables and figures in the current directory.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Fraver, S. & White, A.S. 2005. Identifying growth releases in dendrochronological studies of forest disturbance. Canadian Journal of Forest Research-Revue Canadienne De Recherche Forestiere, 35, 1648-1656.
%% ~put references to the literature/web site here ~
}
\author{
Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>
%%  ~~who you are~~
}
\note{
Check reference.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{absoluteIncrease}}, \code{\link{doAll}} 
}
\examples{
data(relData)
absoluteIncreaseALL(relData1)
absoluteIncreaseALL(relData1,length=3,buffer=4,storedev=pdf)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
