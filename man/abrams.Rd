\name{noblabrams}
\alias{noblabrams}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Nowacki and Abrams 1997, Black and Abrams 2003 or "pure boundary line".
%%  ~~function to do ... ~~
}
\description{
There is a split of behaviour of this function according parameter \code{black}.
\cr
If \bold{ black=TRUE}: Boundary-line method scales the  percent growth change of Nowacki & Abrams (1997) according to growth rate prior to disturbance. In their example, Black & Abrams (2003) defined moderate and major releases as those falling within 20-49.9\%, and 50-100\% of the boundary line, respectively. Advantage of the boundary-line is standardization, which takes into account the relationships among tree age, size, and canopy class determining radial growth rate (Black et al. 2004). On the downside, Black et al. (2009) suggest approximately 50000 ring width measurements is necessary for boundary line determination for a given species (Black et al. 2009).
\cr
If \bold{black=FALSE}: Radial-growth averaging criteria developed by Nowacki & Abrams (1997) is one of the most often used techniques from this category. This method computes the percentage growth change (\%GC) between average radial growth over the preceding 10-year period, M1 (including the target year), and average radial growth over the subsequent 10-year period, M2 (excluding the target year): \%GC = [(M2-M1)/M1] * 100. Minimum threshold for release is 25\% growth change for moderate and >50\% for major release. The advantage of this method is its broad applicability even for a small number of samples, and that information about species autecology is not necessary. On the other hand, this generality of radial-growth averaging may lead to detection of false releases and missing of true releases (Black & Abrams 2003; Fraver & White 2005). These inaccuracies are primarily caused by different growth rates in young, small, and suppressed trees when compared to older, larger and dominant trees.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
noblabrams(data = NULL, prior = NULL, change = NULL, m1 = 10, m2 = 10, boundary = NULL, buffer = 2, criteria = 0.25, criteria2 = 0.5, segment = 0.5, segment2 = 0.5, black = FALSE, gfun = mean, length = 2, notop = 10, notop2 = 10, storedev = jpeg)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{prior}{
%%     ~~Describe \code{prior} here~~
}
  \item{change}{
%%     ~~Describe \code{change} here~~
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
%%     ~~Describe \code{segment2} here~~
}
  \item{black}{If TRUE Black and Abrams 2003 method used else Nowacki and Abrams 1997.
%%     ~~Describe \code{black} here~~
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
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list object with
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{releases}{By length and buffer filtred percent growth change (PGC).}
\item{years }{Release years per tree.}
\item{change}{Original PGC.}
\item{pgc}{Reduced releases values per tree and year.}
\item{years_list_total }{Number of releases per year.}
\item{all_releases }{All PGC above criteria.}
%% ...
}
\references{Nowacki, G.J. & Abrams, M.D. 1997. Radial-growth averaging criteria for reconstructing disturbance histories from presettlement-origin oaks. Ecological Monographs, 67, 225-249.
%%
\cr
Black, B.A. & Abrams, M.D. (2003) Use of boundary-line growth patterns as a basis for dendroecological release criteria. Ecological Applications, 13, 1733-1749.
\cr
Black, B.A., Abrams, M.D., Gagen, M., Daniels, L.D., Kipfmueller, K.F., Speer, J.H. & Anchukaitis, K.J. (2004) Development and application of boundary-line release criteria. Dendrochronologia, 22, 31-42.
\cr
Black, B.A., Abrams, M.D., Rentch, J.S. & Gould, P.J. (2009) Properties of boundary-line release criteria in North American tree species. Annals of Forest Science, 66.
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
\code{\link{growthAveragingAll}}, \code{\link{boundaryLineAll}}, \code{\link{plotRelease}}, \code{\link{reduceByLB}}
}
\examples{
data(relData)
rna<-noblabrams(relData1,black=FALSE) # for Nowacki and Abrams 1997
rba<-noblabrams(relData1,black=TRUE) # Black and Abrams 2003

plotRelease(relData1,rna$change,rna, 1, method="NowackiAbrams",addHLines=c(0.2))
plotRelease(relData1,rba$change,rba, 1, method="BlackAbrams",addHLines=c(0.2,0.5))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
