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
boundaryGet(data, prior = NULL, change = NULL, m1 = 10, m2 = 10, 
  segment = 0.5, segment2 = 0.5, notop = 10, notop2 = 10, 
  gfun = mean, bfun = mean)
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
\details{Boundary-line method scales the  percent growth change of Nowacki & Abrams (1997) according to growth rate prior to disturbance. In their example, Black & Abrams (2003) defined moderate and major releases as those falling within 20-49.9\%, and 50-100\% of the boundary line, respectively. Advantage of the boundary-line is standardization, which takes into account the relationships among tree age, size, and canopy class determining radial growth rate (Black et al. 2004). On the downside, Black et al. (2009) suggest approximately 50000 ring width measurements is necessary for boundary line determination for a given species (Black et al. 2009).
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{bo}{Data frame with \code{segments} (x-axis) and \code{tops}(y-axis). }
\item{x}{x coordinates of all priors.}
\item{y}{y coordinates of all priors.}

}
\references{Black, B.A. & Abrams, M.D. (2003) Use of boundary-line growth patterns as a basis for dendroecological release criteria. Ecological Applications, 13, 1733-1749.
\cr
Black, B.A., Abrams, M.D., Gagen, M., Daniels, L.D., Kipfmueller, K.F., Speer, J.H. & Anchukaitis, K.J. (2004) Development and application of boundary-line release criteria. Dendrochronologia, 22, 31-42.
\cr
Black, B.A., Abrams, M.D., Rentch, J.S. & Gould, P.J. (2009) Properties of boundary-line release criteria in North American tree species. Annals of Forest Science, 66.
%% ~put references to the literature/web site here ~
}
\author{Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>
%%  ~~who you are~~
}
\note{
Check reference.
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
