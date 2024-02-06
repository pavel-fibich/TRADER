\name{boundaryFit}
\alias{boundaryFit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Fit multiple boundary lines.}
\description{Fit multiple boundary lines, write their results and choose the best one.}
\usage{
boundaryFit(boundaries, x, y, boundary = NULL, 
  store = TRUE, storedev = pdf, initNLS = NULL, prefix = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{boundaries}{Data frame with \code{segments} (x-axis) and \code{tops}(y-axis).}
  \item{x}{x coordinates of all priors.}
  \item{y}{y coordinates of all priors.}
  \item{boundary}{Own boundary line function of one argument, eg. \code{boundary=function(x) {5.0067*exp(-0.664*x)}}}
  \item{prefix}{Prefix of saved files.}
  \item{store}{If to save figures.}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.}
  \item{initNLS}{Vector for initialization of start values for \code{\link{nls}} (set a,b,c,d for nls).}
}
\details{Boundary-line method scales the  percent growth change of Nowacki & Abrams (1997) according to growth rate prior to disturbance. In their example, Black & Abrams (2003) defined moderate and major releases as those falling within 20-49.9\%, and 50-100\% of the boundary line, respectively. Advantage of the boundary-line is standardization, which takes into account the relationships among tree age, size, and canopy class determining radial growth rate (Black et al. 2004). On the downside, Black et al. (2009) suggest approximately 50000 ring width measurements is necessary for boundary line determination for a given species (Black et al. 2009).}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{fun}{Fitted function (boundary line).}
\item{rsq}{R square of the fit.}
\item{bestModel}{Best fitted model.}}
\references{Black, B.A. & Abrams, M.D. (2003) Use of boundary-line growth patterns as a basis for dendroecological release criteria. Ecological Applications, 13, 1733-1749.
\cr
Black, B.A., Abrams, M.D., Gagen, M., Daniels, L.D., Kipfmueller, K.F., Speer, J.H. & Anchukaitis, K.J. (2004) Development and application of boundary-line release criteria. Dendrochronologia, 22, 31-42.
\cr
Black, B.A., Abrams, M.D., Rentch, J.S. & Gould, P.J. (2009) Properties of boundary-line release criteria in North American tree species. Annals of Forest Science, 66.}
\author{Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>}
\note{
Check reference.}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{boundaryGet}}, \code{\link{plotBoundary}}, \code{\link{nls}}
}
\examples{
data(relData)
bo<-boundaryGet(relData1)
bofit<-boundaryFit(bo$bo,bo$x,bo$y)

\donttest{ plotBoundary(bo$bo,bo$x,bo$y,boundary=bofit$fun,rsq=bofit$rsq) }
\donttest{ plotBoundary(bo$bo,bo$x,bo$y,boundary=function(x) {5.0067*exp(-0.664*x)}) }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ boundary line }
\keyword{ release }% __ONLY ONE__ keyword per line
  