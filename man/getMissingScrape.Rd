\name{getMissingScrape}
\alias{getMissingScrape}
 
\title{A function to find which scrapes need to be done
 
}
\description{During the course of scraping the server sometimes
  loses the connection or returns an empty file. When that happens
  the \code{scrapeToCsv} should be run again to complete the scrape.
  That function takes a sequence of files that have not been downloaded.
  To figure out the missing files, call \code{getMissingScrape}
 
}
\usage{
getMissingScrape(monthlyList = MONTHLY.STATION.LIST, directory = "EnvCanada")
}
 
\arguments{
  \item{monthlyList}{The file name of the list of stations that report
  monthly. This is created by calling \code{createMonthlyStations}
 
}
  \item{directory}{the default directory where scrapes are stored. EnvCanada.
  
 
}
}
\details{ The monthly list of stations contains all the stations that report
  monthly, numbered from 99111111 upwards. As files are scraped then are
  downloaded to EnvCanada. If the scrape should fail, or if you want to
  do it in bits and peices you can find out which files are missing by
  comparing the master station list with the directory of EnvCanada. This
  function makes that easy and uses the file names to determin which
  elements of the monthly station list are missing.
 
}
\value{the function returns a sequence of integers that are references
  into the monthly station list. That list has 7676 stations. If elements
  52,78,954, and 3215 do not have their associated files in envCanada, then
  those files can be scraped by calling \code{scrapeToCsv} and passing the
  sequence of elements to that function
 
}
 
\author{
Steven Mosher
}
 

 
\examples{
 \dontrun{
   missing <- getMissingScrape()
   scrapeToCsv(Stations,get=missing)
 }
}
 
\keyword{ files }
 
