\name{writeData}
\alias{writeData}
 
\title{Writes a file from a dataframe of climate data
 
}
\description{A function that simply writes the data in a dataframe
  to the data directory. Typically this would be your master data
  file containing all stations and all data
 
}
\usage{
writeData(Data, filename = "EnvCanadaData.dat", directory = DATA.DIRECTORY)
}
 
\arguments{
  \item{Data}{The data created by scraping and processing all the
  web page requests
 
}
  \item{filename}{Default file name for your master data file
 
}
  \item{directory}{Default directory for your data
 
}
}
\details{Function merely wraps a \code{write.csv} call and creates
  a data directory if you need one
 
}
\value{Side efffect is a file is written
 
}
 
\author{Steven Mosher
 
}
 

 

 
\examples{
 \dontrun{
  writeData(data)
 }
}
 
\keyword{ files }
 
