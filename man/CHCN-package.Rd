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
Version: \tab 1.5\cr
Date: \tab 2012-06-07\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab FALSE\cr
}
}
\section{ key functions and building the database}{
  The process of building the database  is shown in the demo files.
  The process starts by downloading the master station list. The format
  of this list has changed somewhat since the first publication of this
  code, so version prior to 1.3 will be broken by that change.
  The first call to make is  \code{downloadMaster()} That call creates
  a master list of all stations and their web ids. If that download fails
  there is a backup version of the file shipped with the package. It
  can be read using the function \code{readLocalMaster}. See that
  documentation for directions. Next, we create
  a list of monthly stations from that master list using
  \code{ Stations <- writeMonthlyStations()} This writes a file of the 
  stations that report monthly. Then we scrape the website:
  \code{scrapeToCsv(Stations)}, passing that function our list
  of monthly stations. When this process completes we check for
  missing or empty csv files: \code{EMPTY <- getEmptyCsv()}. If the list
  is null then we have no empty downloads. Checking for missing
  downloads is accomplished by \code{getMissingScrape}. Assuming
  that all files are downloaded, then we can proceed to create
  datasets and inventories. \code{data <- createDataset()} will
  create a dataset by reading all the csv files. As there is
  more than temperature data here, we want to save it all:
  \code{writeData(data)}. Next, we create an inventory of
  all the stations: \code{inv  <- createInventory()}. This
  inventory can be saved with a simple \code{write.table}.
  When we save this we preserve all the orginal metadata in the
  format we downloaded it in: \code{write.table(inv,"masterInventory.inv")}.
  Next for working with other packages ( like RghcnV3) we want to
  save data in a friendly format: \code{writeInventory(inv)} will
  write a GHCN style inventory with variables named appropriately and
  put into the correct columns for RghcnV3. Lastly, we want to
  select certain data from the master datafile and write it out.
  To select Tmean we do the following 
  \code{Mean <- formatGhcn(data, dataColumn = 7)}. Data column
  7 ( use colnames(data) to see the entire list of options ).
   
  lastly, we write out the data in ghcn format
  \code{writeGhcn(data, directory = DATA.DIRECTORY, filename = "TaveCHCN.dat")}
   

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
     downloadMaster()
     Stations <- writeMonthlyStations()
     scrapeToCsv(Stations)
     EMPTY <- getEmptyCsv()
     if (is.null(EMPTY)){
         data <- createDataset()
         ###  save all the data
         writeData(data)
         inv  <- createInventory()
         write.table(inv,"masterInventory.inv")
         # write a ghcn style inventory
         writeInventory(inv)
         # select Tave data
         Mean <- formatGhcn(data, dataColumn = 7)
         writeGhcn(Mean)
 
} else{
  scrapeToCsv(EMPTY)
}

}
 
}
