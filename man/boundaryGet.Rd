\name{boundaryGet}
\alias{boundaryGet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Get values for fitting boundary line.
%%  ~~function to do ... ~~
}
\description{ Get values for fitting boundary line.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
boundaryGet(data, prior = NULL, change = NULL, m1 = 10, m2 = 10, segment = 0.5, segment2 = 0.5, notop = 10, notop2 = 10, gfun = mean, bfun = mean)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{prior}{Priors.
%%     ~~Describe \code{prior} here~~
}
  \item{change}{Percentage growth change.
%%     ~~Describe \code{change} here~~
}
  \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m2} here~~
}
  \item{segment}{Determines length of the segment on which prior growth will be divided
%%     ~~Describe \code{segment} here~~
}
  \item{segment2}{Determines length of the segment on which first mm of prior growth will be divided.
%%     ~~Describe \code{segment2} here~~
}
  \item{notop}{Number of  highest data points for fitting the boundary line.
%%     ~~Describe \code{notop} here~~
}
  \item{notop2}{Number of  highest data points for fitting the boundary  line in the segments for first mm.
%%     ~~Describe \code{notop2} here~~
}
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
  \item{bfun}{Which function use for number of highest data points.
%%     ~~Describe \code{bfun} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{bo}{Data frame with \code{segments} (x-axis) and \code{tops}(y-axis). }
\item{x}{x coordinates of all priors.}
\item{y}{y coordinates of all priors.}

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
\code{\link{boundaryFit}}, \code{\link{plotBoundary}}
}
\examples{
data(relData)
bo<-boundaryGet(relData1)
plot(bo)
plotBoundary(bo$bo,bo$x,bo$y,boundary=function(x) {5.0067*exp(-0.664*x)})
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
