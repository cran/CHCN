\name{downloadMaster}
\alias{downloadMaster}
 
\title{ Download the master list of stations
 
}
\description{This function simply downloads the master
  list and gives it a name that other functions rely on
 
}
\usage{
downloadMaster(url = STATION.URL, localFile = MASTER.STATION.LIST)
}
 
\arguments{
  \item{url}{the url for the csv file that contains all the stations
 
}
  \item{localFile}{A local filename to write this data to
 
}
}
\details{The function downloads the output of a scraper written by
  DrJ of clearclimatecode. That scraper is found here:
  \url{http://scraperwiki.com/scrapers/can-weather-stations/}
  It scrapes the main page at Enviroment Canada and deposits a
  csv file containing all the information needed to data scrape
 
}
\value{ The function downloads a csv file and writes a local version
 
}
\references{ \url{http://scraperwiki.com/scrapers/can-weather-stations/}
 
}
\author{Steven Mosher
 
}
 
 
\keyword{ files }
 
