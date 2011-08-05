\name{BASE.URL}
\alias{BASE.URL}
\docType{data}
\title{ The "base" elements of the url for scraping
 
}
\description{ The http request is made to Enviroment Canada using
   a URL that consists of a "base" element, a station Id, a year
   and a format.
 
}
\usage{ BASE.URL }
\format{
  The format is:
   chr "http://climate.weatheroffice.gc.ca/climateData/
        bulkdata_e.html?timeframe=3&Prov=XX&StationID="
}
\details{ The base is used to construct the final http request. The various
  elements are pasted together.
 
}
\source{\url{http://climate.weatheroffice.gc.ca}
 
}
\references{ The request format was passed from Enviroment Canada
  via email and verified by performing sample downloads.
 
}
 
\keyword{datasets}
