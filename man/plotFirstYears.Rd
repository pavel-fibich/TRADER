\name{plotFirstYears}
\alias{plotFirstYears}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot first years of trees.
%%  ~~function to do ... ~~
}
\description{Plot first years of trees including option of adding misspiths.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotFirstYears(data = NULL, misspith = NULL, store = TRUE, 
  storedev = jpeg, prefix="fy", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{data} here~~
}
  \item{misspith}{An optional vector containing series IDs in the first column (they must exactly match with series IDs in measurement) and information about the number of missing years in second column
%%     ~~Describe \code{misspith} here~~
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
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{First year plotting function.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Plot and store number of trees in years.
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
\code{\link{plotGrowth}}
}
\examples{
data(relData)
plotFirstYears(relData1)

plotFirstYears(relData1,relMissPith)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
