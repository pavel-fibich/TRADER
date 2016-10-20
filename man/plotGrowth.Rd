\name{plotGrowth}
\alias{plotGrowth}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot growth of all trees.
%%  ~~function to do ... ~~
}
\description{Plot growth of all trees and fit polynom for them.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotGrowth(data = NULL, prefix = "growth", polynom = 4, 
  store = TRUE, storedev = pdf, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{polynom}{Degree of fitted polynom.
%%     ~~Describe \code{polynom} here~~
}
  \item{store}{If to save results on files.
%%     ~~Describe \code{store} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{...}{Arguments passed to plot function.}
}
\details{Plot function focusing on the trend of the growth of trees.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Plot growth of all trees.
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
\code{\link{plotFirstYears}}
}
\examples{
data(relData)
plotGrowth(relData1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
