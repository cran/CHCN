\name{CHCN-package}
\alias{CHCN-package}
\alias{CHCN}
\docType{package}
\title{ A package for Building Historical Climate data for Canada
 
}
\description{The package provides tools for scraping climate
  data from the Environment Canada website and turning it 
  into R objects that can easily be used by analysts. The
  functions provided allow the user to download a master
  list of all the data at Environment Canada and to build
  a collection of monthly climate data from those resources.
  The master list is downloaded and then the stations which 
  provide monthly data is extracted. Those
  station Ids are used to make http requests and the data
  is downloaded as csv files. There are function provided
  to parse the local csv files and create station "Inventories"
  with limited metadata ( station name, latitude, longitude, etc).
  In addition, functions for selecting and compiling temperature
  data are provided. Other data, such as snowfall, rainfall, can
  also be easily extracted with simple R commands. Data can be
  reformated into a format similar to that provided by NOAA's
  GHCN ( Global Historical Climate Network) and integration
  with the package RghcnV3 is trivial. 
 
}
\details{
\tabular{ll}{
Package: \tab CHCN\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2011-08-05\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab FALSE\cr
}
  
}
\author{
Steven Mosher

Maintainer: Steven Mosher<moshersteven@gmail.com>
 
}
\references{\url{http://climate.weatheroffice.gc.ca}
 
}
 
\keyword{ package }
 
\examples{
\dontrun{
   Stations <- writeMonthlyStations()
   scrapeToCsv(Stations,get=1:100)
   Inv <- createInventory()
   data <-createDataset(Ids = STARTING.STATION.ID:(STARTING.STATION.ID + 99))

}
 
}
