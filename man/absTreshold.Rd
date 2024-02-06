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
  \item{tvalue}{ constat from Fraver & White 2005
%%     ~~Describe \code{tvalue} here~~
}
}
\details{
You can specifie threshold value or use 1.25 * standard deviation used in Fraver & White 2005.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  Returns one threshold value.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Fraver, S. & White, A.S. 2005. Identifying growth releases in dendrochronological studies of forest disturbance. Canadian Journal of Forest Research-Revue Canadienne De Recherche Forestiere, 35, 1648-1656.
%% ~put references to the literature/web site here ~
}
\author{
Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>
%%  ~~who you are~~
}
\note{Check the reference.
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
\keyword{ release }

