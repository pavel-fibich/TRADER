\name{reduceByLB}
\alias{reduceByLB}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Reduce releases by length and buffer.
%%  ~~function to do ... ~~
}
\description{Reduce peaks of releases according length and buffer.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
reduceByLB(releases, above, buffer = 2, type = 1, length = 2, val = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{releases}{Peak of releases.
%%     ~~Describe \code{releases} here~~
}
  \item{above}{All releases above threshold.
%%     ~~Describe \code{above} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{type}{If to return years of releases (type=1), values of releases (type=2) or values from \code{val} (type=3).
%%     ~~Describe \code{type} here~~
}
  \item{length}{Determines how many years have to be given critera exceeded to be considered as release.
%%     ~~Describe \code{length} here~~
}
  \item{val}{Additional source for returning if there are releases.
%%     ~~Describe \code{val} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return list of releases reduced by length and buffer.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(relData)
rna<-noblabrams(relData1,black=FALSE) # for Nowacki and Abrams 1997

reduceByLB(rna$all_releases)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
