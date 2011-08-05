
writeMonthlyStations <- function(filename = MASTER.STATION.LIST, outfile = MONTHLY.STATION.LIST ){
  
    LookUpInfo <- read.csv(filename,stringsAsFactors=FALSE)
    # first row is bogosity
    LookUpInfo <- LookUpInfo[-1,]
    Monthly    <- LookUpInfo[,c(5,6,8)]
    FirstYear  <- substr(Monthly$mlyRange,1,4)
    Data       <- data.frame(Name    = Monthly$name,
                             Year    = substr(Monthly$mlyRange,1,4),
                             WebId   = Monthly$webid)

    dex <-  which(Data$Year == "N/A")
    Data <- Data[-dex,]
    nex  <- which(!is.na(Data$WebId))
    Data <- Data[nex,]
    newId <-seq(from = STARTING.STATION.ID,length =nrow(Data))
    Data <- data.frame(Id=newId,Data)
    
    if (!is.null(outfile)) write.csv(Data,outfile) 
  
    return(Data)
  
}