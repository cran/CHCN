\name{writeMonthlyStations}
\alias{writeMonthlyStations}
 
\title{ Function to read the master list and write a monthly
  list of stations. This file is critical to the operation
  of the scraper.
 
}
\description{ the function reads the master list and writes a local
  list of stations that report monthly data. It also returns an object
  dataframe. That dataframe can be fed to downstream processes
 
}
\usage{writeMonthlyStations(filename = MASTER.STATION.LIST, 
                             outfile =   MONTHLY.STATION.LIST)
}
 
\arguments{
  \item{filename}{ The filename of the master list. This is set to a default
  that should not be changed.
 
}
  \item{outfile}{the local filename. Used by other functions. It should
  not be changed
 
}
}
\details{reads the master list. Extracts those stations that report
  monthly. Selects the first year reporting and the web Id for the
  http request builder. Assigns an Id to every station for
  file naming and tracking. The id it assigns is used for tracking
  the scrape progress and recovering from scrape failures.
 
}
\value{returns a dataframe and writes that dataframe to disk.
  can be read with \code{read.csv}
 
}
 
\author{Steven Mosher
 
}
 
 
\examples{
 \dontrun{
   Stations <- writeMonthlyStations()
 }
}
 
\keyword{ files }
 
