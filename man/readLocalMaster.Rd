\name{readLocalMaster}
\alias{readLocalMaster}
 
\title{ A function to read a local copy of the master csv file
 
}
\description{The Process of building the dataset depends upon
 downloading a csv file that lists all the data on environment
 canada. If for some reason the function \code{downloadMaster}
 does not function, the file can be read from a local copy
 shipped with the package. This version should be current to
 the last release date of the package.
 
}
\usage{
readLocalMaster()
}
 
\details{ The function reads a stored copy of EnvCanadaMaster.csv
 that ships with the package. After reading the file you should
 write it out to your working directory. The following call
 will read the local copy and write it out to your working directory.
 write.csv(readLocalMaster(),MASTER.STATION.LIST)
 
}
\value{ the function returns a data.frame that contains the information
 neeed to create a master list of monthly stations ( as opposed to
 daily stations and hourly stations which are also in the master list)
 That data.frame should be written as a csv file to the working directory
 It must be given the name  EnvCanadaMaster.csv . The constant
 MASTER.STATION.LIST  is predefined to this strings value
 
}
 
\author{Steven Mosher
 
}
 

 
\keyword{ filetools }
 
