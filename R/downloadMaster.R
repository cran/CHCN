downloadMaster <- function(url = STATION.URL, localFile = MASTER.STATION.LIST){
  
  download.file(url,destfile = localFile, mode ="wb")
  
}