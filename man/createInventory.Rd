\name{createInventory}
\alias{createInventory}
 
\title{Creates an inventory of all stations in the directory
 
}
\description{After all the files have been scraped to EnvCanada
  the next step is to create a master inventory of every station.
  The cvs files have 7 lines of metadata which is read by this
  function and formated into a R data structure for saving
 
}
\usage{
createInventory(directory = "EnvCanada")
}
 
\arguments{
  \item{directory}{Defaults to EnvCanada where all scrapes are
  written to.
 
}
}
\details{ As they are scraped the files are given a unique identifier
   which is contained in the monthly station list. That identifier
   is a part of the filename is it saved under. The directory is
   searched for files matching a specific name pattern. Those files
   are read in and the metadata is collected and formated into a dataframe
 
}
\value{the function returns a dataframe conatining all the metadata
  of the stations in the directory. this should be saved as a file.
 
}
 
\author{Steven Mosher
 
}
 

 
\examples{
\dontrun{

  Inv <- createInvetory()
  write.table(Inv,"masterInventory.inv")

}
 
}
 
\keyword{ files }
 
