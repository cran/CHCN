\name{createDataset}
\alias{createDataset}
 
\title{A function to create a dataset from csv files on disk
 
}
\description{After files have been scraped to disk they have to processed
  from cvs files into proper R objects. The first step is to create
  and inventory and then to create datasets. This function creates datasets.
  Every csv file has 25 parameters. Creating the entire dataset makes
  a 350Mb file and takes a long time to process. In the end you have
  a dataset that conatins all the monthly data from Environment canada.
 
}
\usage{
createDataset(Ids = NULL, filename = MONTHLY.STATION.LIST, directory = "EnvCanada")
}
 
\arguments{
  \item{Ids}{a sequence of unique station Ids. Ids start at 99111111. They
  are present as variables in both the file names and the inventories.
  Ids defaults to NULL. If this is not changed by the caller then all 
  station Ids are used to create the dataset. Alternatively, one can create
  a subset of all the data by subseting the inventory and working with the
  Ids from that inventory. For example, one could create datasets for every
  province or for lat/lon combinations.
 
}
  \item{filename}{This is the filename of the master list of monthly stations.
  that file is read in get a list of all unique Ids
 
}
  \item{directory}{The directory defaults to EnvCanada where all the csv files
  are. The csv files all have unique names that are tied to the unique Ids.
  Given the vector of Ids provided by the caller, and the list of files
  available, the function then reads in those files to generate a data structure.
 
}
}
 
\value{ The function returns a dataframe of 27 variables, including
  Ids, climate data, and the file that was used to create the data.
  This data can then be written out by R's write commands. You 
  can also pass this data through \code{formatGhcn} and create
  datasets that can be read by RghcnV3
 
}
 
\author{Steven Mosher
 
}
 

  
\examples{
\dontrun{

 data <-createDataset(Ids = STARTING.STATION.ID:(STARTING.STATION.ID + 5))
 data <-createDataset() # compiles a complete dataset of all files
}
 
}
 
\keyword{ files }
 
