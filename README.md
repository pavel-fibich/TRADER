TRADER
======

Tree Ring Analysis of Disturbance Events in R - see Dendrochronologia paper http://dx.doi.org/10.1016/j.dendro.2014.01.004

The TRADER package provides only one way for disturbance reconstruction from tree-ring data. TRADER is a unique package bringing the first instrument for analysis of forest disturbance history in complementary ways. Final advantage of TRADER is the possibility of results comparison between individual studies. This is enabled by easy parameter changes in data processing, as well as by clearly arranged graphical and tabular outputs. We developed TRADER in open source R environment, to further support the on-going open-source software development for dendrochronological methods and data availability.

R package is downloadable from http://botanika.prf.jcu.cz/fibich/TRADER_1.0.8.tar.gz


GITHUB
======

 git clone git://github.com/pavel-fibich/TRADER

 R CMD build TRADER 

 >install.packages("TRADER_VERSION.tar.gz",repos=NULL,type="source")
 
 eg.

 >install.packages("TRADER_1.0.8.tar.gz",repos=NULL,type="source")