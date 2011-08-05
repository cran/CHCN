\name{formatGhcn}
\alias{formatGhcn}
 
\title{ creates a 14 column dataset for output
 
}
\description{The entire dataset of Environment Canada has 25 columns
  of data: Tmax,Tmin,Tave, quality flags and other climate data.
  For use with the package RghcnV3 a 14 column format is required.
  This format is similar to the 14 column format of GHCN V2.
  Id is in the first column, followed by Year, followed by 12
  measures, one for each month of the year in column 2. This function
  takes a column and creates a dataset in that format
 
}
\usage{
formatGhcn(data, dataColumn = 7)
}
 
\arguments{
  \item{data}{A dataset that has been created by \code{createDataset}
 
}
  \item{dataColumn}{The column of the data you want to reformat.
    column = 7, will collate the Mean air temperature from a
    full 25 column dataset. Use \code{colnames(data)} to determine
    which column you want to format
 
}
}
\details{ GHCN data is in 14 column or 51 column format. Every row
  of data has an Id, a year and 12 months of data. This function takes
  the datasets of this package and creates formats that are readable
  by the package \code{RghcnV3}. The function \code{createDataset} is
  used to read from csv files and create a complete dataset with 25
  columns of data. Typically you want to work with one data item
  at a time. This function allows you to extract and reformat a
  column of that data
 
}
\value{Returns a 14 column dataframe
 
}
 
\author{Steven Mosher
 
}
 

 

\seealso{\code{\link{createDataset}}
 
}
\examples{
 \dontrun{
   data <-createDataset()
   Mean <-formatGhcn(data)
   writeGhcn(Mean)
 }
}
 
\keyword{ files }
 
