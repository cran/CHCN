\name{writeInventory}
\alias{writeInventory}
 
\title{Writes inventory data in a format usable by RghcnV3 package
 
}
\description{The RGhcnV3 package expects certain fields -- Id, lat,lon
  in a specific order. This write function insures the data is read
  in a compatible manner with that package
 
}
\usage{
writeInventory(Inventory, filename = "Inventory.inv", directory = DATA.DIRECTORY)
}
 
\arguments{
  \item{Inventory}{A inventory of stations
 
}
  \item{filename}{A default name
 
}
  \item{directory}{the default data directory
 
}
}
\details{the function merely reorders the columns so that
  id is in the first column followed by latitude, and longitude
 
}
\value{The side effect is writing a file
 
}
 
\author{Steven Mosher
 
}
 

 

 
 
\keyword{ files }
 
