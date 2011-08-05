\name{scrapeToCsv}
\alias{scrapeToCsv}
 
\title{A function to scrape files to local csv files
 
}
\description{This function uses the monthly list of stations
  and downloads them to a local directory. There are  7676 
  files as of July 2011. The function throws warnings about
  wrong files sizes. These can be ignored or suppressed by
  setting warning options
 
}
\usage{
scrapeToCsv(Stations, get = seq(from = 1, to = 1e+05), directory = "EnvCanada")
}
 
\arguments{
  \item{Stations}{A data structure returned from \code{readMonthlyStations}
    If the monthly station file already exists, it can simply be read
    from disk with \code{read.csv}
}
  \item{get}{ get is assigned to a sequence of numbers that is used to index
  the monthly station list. It defaults to 1:100000. This results in the
  function trying to download all 7676 files from Env Canada. Alternatively,
  one can download the files in chunks, for example setting \code{get} to
  1:1000, or any other sequence of numbers. Internal checking ensures
  that the sequence sought is available for download. Irregular sequences
  are also supported: \code{ get = c( 23,65,257,7000)} would get those
  elements from the list of stations in monthly.env.csv
 
}
  \item{directory}{The local directory to write the csv files to. "EnvCanada"
 
}
}
\details{When \code{createMonthlyStations} is executed the master list is
  parsed and only those stations that report monthly are copied into a
  file. The file contains a web Id that is used when downloading. To
  scrape the files in the monthly data structure youc all 
  \code{scrapeToCsv} and provide a sequence of stations you want to
  download. The download will occasionally fail for server timeouts.
  By using the function \code{getMissingScrapes} you can determine which
  files are missing from the directory. So if you try to download all
  7676 files and the server times out after 2365, the function 
  \code{getMissingScrapes} will provide a sequence of files to be
  downloaded to complete your scrape.
 
}
\value{function downloads files according to the sequence
  of values in the "get" parameter.
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{getMissingScrape}}
 
}
\examples{
\dontrun{
   Stations <- writeMonthlyStations()
   scrapeToCsv(Stations,get=1:100)
   scrapeToCsv(Stations,get=100:2075)

}
 
   
}
 
\keyword{ files }
 
