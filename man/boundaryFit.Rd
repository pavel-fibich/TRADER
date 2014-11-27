\name{boundaryFit}
\alias{boundaryFit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Fit multiple boundary lines.
%%  ~~function to do ... ~~
}
\description{Fit multiple boundary lines, write their results and choose the best one.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
boundaryFit(boundaries, x, y, boundary = NULL, prefix = "bo", store = TRUE, storedev = pdf, initNLS = NULL)
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
  \item{boundary}{Own boundary line function of one argument, eg. \code{boundary=function(x) {5.0067*exp(-0.664*x)}}
%%     ~~Describe \code{boundary} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{store}{If to save figures.
%%     ~~Describe \code{store} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{initNLS}{Vector for initialization of start values for \code{\link{nls}} (set a,b,c,d for nls).
%%     ~~Describe \code{initNLS} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{fun}{Fitted function (boundary line).}
\item{rsq}{R square of the fit.}
\item{bestModel}{Best fitted model.}
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
\code{\link{boundaryGet}}, \code{\link{plotBoundary}}, \code{\link{nls}}
}
\examples{
data(relData)
bo<-boundaryGet(relData1)
bofit<-boundaryFit(bo$bo,bo$x,bo$y)

plotBoundary(bo$bo,bo$x,bo$y,boundary=bofit$fun,rsq=bofit$rsq)
plotBoundary(bo$bo,bo$x,bo$y,boundary=function(x) {5.0067*exp(-0.664*x)})
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
