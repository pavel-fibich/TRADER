\name{absTreshold}
\alias{absTreshold}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute absolute threshold
%%  ~~function to do ... ~~
}
\description{"Blind" definition of the absolute-increase threshold of Fraver & White 2005 (1.25*standard deviation).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
absTreshold(abs, tvalue = 1.25)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{abs}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
%%     ~~Describe \code{abs} here~~
}
  \item{tvalue}{ constat from Fraver & White 2005.
%%     ~~Describe \code{tvalue} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
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
\code{\link{help}} \code{\link{absoluteIncrease}}
}
\examples{
data(relData)
abs<-absIncrease(relData1)
absTreshold(abs)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
