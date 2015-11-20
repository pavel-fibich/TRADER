\name{plotBoundary}
\alias{plotBoundary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot boundary line.
%%  ~~function to do ... ~~
}
\description{Plot boundary line.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotBoundary(boundaries, x, y, boundary, rsq = NULL, prefix = "bo", 
  criteria = 0.2, criteria2 = 0.5, store = TRUE, storedev = jpeg)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{boundaries}{Data frame with \code{segments} (x-axis) and \code{tops}(y-axis).
%%     ~~Describe \code{boundaries} here~~
}
  \item{x}{x coordinates of all priors.
%%     ~~Describe \code{x} here~~
}
  \item{y}{y coordinates of all priors.
%%     ~~Describe \code{y} here~~
}
  \item{boundary}{Boundary line function of one argument, eg. \code{boundary=function(x) {5.0067*exp(-0.664*x)}}
%%     ~~Describe \code{boundary} here~~
}
  \item{rsq}{R square of the fit.
%%     ~~Describe \code{rsq} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{criteria}{Threshold for detection of moderate release
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2}{Threshold for detection of major release.
%%     ~~Describe \code{criteria2} here~~
}
  \item{store}{If to save results on files.
%%     ~~Describe \code{store} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
}
\details{Boundary-line method scales the  percent growth change of Nowacki & Abrams (1997) according to growth rate prior to disturbance. In their example, Black & Abrams (2003) defined moderate and major releases as those falling within 20-49.9\%, and 50-100\% of the boundary line, respectively. Advantage of the boundary-line is standardization, which takes into account the relationships among tree age, size, and canopy class determining radial growth rate (Black et al. 2004). On the downside, Black et al. (2009) suggest approximately 50000 ring width measurements is necessary for boundary line determination for a given species (Black et al. 2009).
%%  ~~ If necessary, more details than the description above ~~
}
\value{Plot boundary line and priors.
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
\code{\link{boundaryGet}}, \code{\link{boundaryFit}} 
}
\examples{
data(relData)
bo<-boundaryGet(relData1)
bofit<-boundaryFit(bo$bo,bo$x,bo$y)

plotBoundary(bo$bo,bo$x,bo$y,boundary=bofit$fun,rsq=bofit$rsq)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
