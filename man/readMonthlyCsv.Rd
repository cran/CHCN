\name{readMonthlyCsv}
\alias{readMonthlyCsv}
 
\title{ reads the csv file that contains all the monthly stations
 
}
\description{A simple function that wraps a \code{read.csv} call to
  read the stations in the monthly station list
 
}
\usage{readMonthlyCsv(filename = MONTHLY.STATION.LIST)
}
 
\arguments{
  \item{filename}{Default name oof the file. Should not be changed
 
}
}
\details{ simplys wraps a \code{read.csv} call
 
}
\value{returns a data frame of the stations that report monthly
 
 
}
 
\author{Steven Mosher
 
}
 

 
\examples{
 \dontrun{
   Stations <- readMonthlyCsv()
 }
}
 
\keyword{ files }
 
