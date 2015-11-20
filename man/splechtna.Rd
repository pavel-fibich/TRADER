\name{splechtna}
\alias{splechtna}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Splechtna et al. 2005 type of releases analysis.
%%  ~~function to do ... ~~
}
\description{Splechtna is a combination of radial-growth averaging and boundary-line technique. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
splechtna(data, change = NULL, prior = NULL, m1 = 10, m2 = 10, 
  boundary = NULL, buffer = 2, criteria = 0.2, criteria2 = 0.5, 
  segment = 0.5, gfun = mean, length = 2, segment2 = 0.5, 
  notop = 10, notop2 = 10, storedev = jpeg)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{change}{Precomputed percent growth change.
%%     ~~Describe \code{change} here~~
}
  \item{prior}{Precomputed priors.
%%     ~~Describe \code{prior} here~~
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
}
\details{Splechtna is a combination of radial-growth averaging and boundary-line technique. This method was developed by Splechtna, Gratzer & Black (2005) and as a potential release accepts only growth pulses exceeding 50\% growth change according to Nowacki & Abrams (1997). Only these potential releases were then scaled relative to the boundary line.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{releases}{By length and buffer filtred scaled percent growth change (PGC).}
\item{years }{Release years per tree.}
\item{change}{Original PGC.}
\item{pgc}{Reduced releases values per tree and year.}
\item{years_list_total }{Number of releases per year.}
\item{all_releases }{All PGC above criteria.}
%% ...
}
\references{Splechtna, B.E., Gratzer, G. & Black, B.A. 2005. Disturbance history of a European old-growth mixed-species forest - A spatial dendro-ecological analysis. Journal of Vegetation Science, 16, 511-522.
%% ~put references to the literature/web site here ~
}
\author{Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>
%%  ~~who you are~~
}
\note{Check the reference.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{splechtnaALL}} \code{\link{plotRelease}} \code{\link{reduceByLB}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(relData)
rel<-splechtna(relData1)
plotRelease(relData1,rel$change,rel,1,method="Splechtna")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
