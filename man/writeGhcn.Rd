\name{writeGhcn}
\alias{writeGhcn}
 
\title{A simple wrapper to \code{write.table}
 
}
\description{Simply writes a file to the data directory using
  \code{write.table}
 
}
\usage{
writeGhcn(data, directory = DATA.DIRECTORY, filename = "TaveCHCN.dat")
}
 
\arguments{
  \item{data}{The data you want to write
 
}
  \item{directory}{defaults to the processed data directory
 
}
  \item{filename}{ The filename you want for the data
 
}
}
\details{ Simply uses \code{write.table} to write the data
 
}
\value{side effect is a file is written
 
}
 
\author{Steven Mosher
 
}
 
 
\examples{\dontrun{

  writeGhcn(data)
}
 
}
 
\keyword{ files}
 
