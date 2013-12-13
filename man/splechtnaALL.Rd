\name{splechtnaALL}
\alias{splechtnaAll}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Overal function for Splechtna et al. 2005 type of releases analysis.
%%  ~~function to do ... ~~
}
\description{Splechtna is a combination of radial-growth averaging and boundary-line technique. This method was developed by Splechtna, Gratzer & Black (2005) and as a potential release accepts only growth pulses exceeding 50\% growth change according to Nowacki & Abrams (1997). Only these potential releases were then scaled relative to the boundary line.

}
\usage{
splechtnaALL(data, releases = NULL, m1 = 10, m2 = 10, boundary = NULL, buffer = 2, drawing = TRUE, criteria = 0.2, criteria2 = 0.5, segment = 0.5, segment2 = 0.5, prefix = "sp", gfun = mean, length = 2, notop = 10, notop2 = 10, storedev = jpeg, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
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
  \item{boundary}{Boundary line function of one argument, eg. \code{boundary=function(x) {5.0067*exp(-0.664*x)}}
%%     ~~Describe \code{boundary} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{criteria}{Threshold for detection of moderate release
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2}{Threshold for detection of major release.
%%     ~~Describe \code{criteria2} here~~
}
  \item{segment}{Determines length of the segment on which prior growth will be divided
%%     ~~Describe \code{segment} here~~
}
  \item{segment2}{Determines length of the segment on which first mm of prior growth will be divided.
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
  \item{notop}{Number of  highest data points for fitting the boundary line.
%%     ~~Describe \code{notop} here~~
}
  \item{notop2}{Number of  highest data points for fitting the boundary  line in the segments for first mm.
%%     ~~Describe \code{notop2} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{drawing}{If TRUE, graphical outputs for individual trees.
%%     ~~Describe \code{storedev} here~~
}

  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Write many tables and figures in the current directory.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Splechtna, B.E., Gratzer, G. & Black, B.A. 2005. Disturbance history of a European old-growth mixed-species forest - A spatial dendro-ecological analysis. Journal of Vegetation Science, 16, 511-522.
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
\code{\link{splechtna}}, \code{\link{doAll}} 
}
\examples{
data(relData)
splechtnaALL(relData1)
splechtnaALL(relData1,length=3,buffer=4,storedev=pdf,boundary=function(x) {5.0067*exp(-0.664*x)} )
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
