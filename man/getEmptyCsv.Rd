\name{getEmptyCsv}
\alias{getEmptyCsv}
 
\title{A function to check for empty Csv files
 
}
\description{Before creating inventories or datasets the EnvCanada
  directory should be checked for completeness. Sometimes the scraping
  process will result in empty csv files. This function checks for
  empty files and returns a set of indices for re-scraping the empty
  files
 
}
\usage{
getEmptyCsv(directory = "EnvCanada", Monthly = MONTHLY.STATION.LIST)
}
 
\arguments{
  \item{directory}{The directory where the csv files live
 
}
  \item{Monthly}{The name of the cvs file with the list of stations
  that report monthly
 
}
}
\details{The function uses \code{file.info} and \code{list.files} to
  find csv files with zero size. Then it seatches the list of monthly
  stations to find the index (1-7676) of that station Id and returns
  the set of indices for files that have zero length. Thus the
  function \code{scrapeToCsv} can then be called with the results
  of \code{getEmptyCsv}
 
}
\value{A vector of indicies for empty files OR NULL
 
}
 
\author{Steven Mosher
 
}
 

 

 
\examples{
 \dontrun{
   x<-getEmptyCsv()
   # check if x is non null
   scrapeToCsv(get = x)
 
 }
}
 
\keyword{ files }
 
