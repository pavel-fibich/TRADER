\name{plotRelease}
\alias{plotRelease}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot releases according the given method.
%%  ~~function to do ... ~~
}
\description{Plot releases according the given method.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotRelease(data, abs, rel, treeno = 1, method = "FraverWhite", 
  type = "l", xlab = NULL, ylab = NULL, main = NULL, 
  col = c("black", "lightblue"), 
  addHLinesCol = c("olivedrab", "red", "darkblue"), 
  addHLines = c(NULL, NULL, NULL), addHLinesText = c("", "", ""), 
  smallcex = 0.85, plotfirst = TRUE, plotpoints = FALSE, 
  store=TRUE, storedev=pdf, prefix=NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{abs}{Data frame with absolute increases.
%%     ~~Describe \code{abs} here~~
}
  \item{rel}{Data frame with releases.
%%     ~~Describe \code{rel} here~~
}
  \item{treeno}{Number of tree to plot.
%%     ~~Describe \code{treeno} here~~
}
  \item{method}{Which method was used for releases.
%%     ~~Describe \code{method} here~~
}
  \item{type}{type of plots (parameter type for plot).
%%     ~~Describe \code{type} here~~
}
  \item{xlab}{Label of x-axis.
%%     ~~Describe \code{xlab} here~~
}
  \item{ylab}{Label of y-axis.
%%     ~~Describe \code{ylab} here~~
}
  \item{main}{Title of the figure.
%%     ~~Describe \code{main} here~~
}
  \item{col}{List of colors for curves.
%%     ~~Describe \code{col} here~~
}
  \item{addHLinesCol}{List of colors for horizontal lines.
%%     ~~Describe \code{addHLinesCol} here~~
}
  \item{addHLines}{List values for horizontal lines.
%%     ~~Describe \code{addHLines} here~~
}
  \item{addHLinesText}{List texts for horizontal lines.
%%     ~~Describe \code{addHLinesText} here~~
}
  \item{smallcex}{\code{cex} for text.
%%     ~~Describe \code{smallcex} here~~
}
  \item{plotfirst}{If to plot first year of growth.
%%     ~~Describe \code{plotfirst} here~~
}
  \item{plotpoints}{If to plot points on the top of releases.
%%     ~~Describe \code{plotpoints} here~~
}
  \item{store}{If to save results on files.
%%     ~~Describe \code{store} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{\dots}{Further arguments pasted to plot function.
%%     ~~Describe \code{\dots} here~~
}
}
\details{Complex plotting function of releases.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Plot releases for given tree (\code{treeno}).
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
\code{\link{absoluteIncreaseALL}},
\code{\link{growthAveragingALL}},
\code{\link{boundaryLineALL}},
\code{\link{splechtnaALL}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(relData)
rna<-noblabrams(relData1,black=FALSE) # for Nowacki and Abrams 1997
rba<-noblabrams(relData1,black=TRUE) # Black and Abrams 2003

plotRelease(relData1,rna$change,rna, 1, method="NowackiAbrams")
plotRelease(relData1,rba$change,rba, 1, method="BlackAbrams",addHLines=c(0.2,0.5))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ splechtna }
\keyword{ boundary line}
\keyword{treering}

