\name{growthAveragingALL}
\alias{growthAveragingALL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Overal function for Nowacki and Abrams 1997 method.
%%  ~~function to do ... ~~
}
\description{Radial-growth averaging criteria developed by Nowacki & Abrams (1997) is one of the most often used techniques from this category. This method computes the percentage growth change (\%GC) between average radial growth over the preceding 10-year period, M1 (including the target year), and average radial growth over the subsequent 10-year period, M2 (excluding the target year): \%GC = [(M2-M1)/M1] * 100. Minimum threshold for release is 25\% growth change for moderate and >50\% for major release. The advantage of this method is its broad applicability even for a small number of samples, and that information about species autecology is not necessary. On the other hand, this generality of radial-growth averaging may lead to detection of false releases and missing of true releases (Black & Abrams 2003; Fraver & White 2005). These inaccuracies are primarily caused by different growth rates in young, small, and suppressed trees when compared to older, larger and dominant trees.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
growthAveragingALL(data, releases = NULL, m1 = 10, m2 = 10, 
  buffer = 2, drawing = TRUE, criteria = 0.25, criteria2 = 0.5, 
  prefix = "ga", gfun = mean, length = 2, storedev = jpeg, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
}
  \item{releases}{Optional parameter usable for precomputed releases.
%%     ~~Describe \code{releases} here~~
}
   \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m2} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{drawing}{If TRUE, graphical outputs for individual trees.
%%     ~~Describe \code{drawing} here~~
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
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
  \item{length}{Determines how many years have to be given critera exceeded to be considered as release.
%%     ~~Describe \code{length} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{noblabrams}}, \code{\link{doAll}} 
}
\examples{
data(relData)
growthAveragingALL(relData1)
growthAveragingALL(relData1,length=3,buffer=4,storedev=pdf)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
