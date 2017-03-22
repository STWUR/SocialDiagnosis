#' Download shapefile with NUTS3 regions
#'
#' Download shapefile with NUTS3 regions
#'
#' @param dir_name target directory for data.
#' @return Invisible 0.
#' @details The size of shapefile is 10 MB.
#' @export


download_map <- function(dir_name = "map_data") {
  
  dir.create(dir_name)
  
  can_download <- download.file(url = "http://ec.europa.eu/eurostat/cache/GISCO/geodatafiles/NUTS_2010_10M_SH.zip",
                                 destfile = paste0(dir_name, "/NUTS_2010_10M_SH.zip"))
  
  unzip(zipfile =  paste0(dir_name, "/NUTS_2010_10M_SH.zip"), exdir = dir_name)
  
  file.remove(paste0(dir_name, "/NUTS_2010_10M_SH.zip"))
  
  if(can_download != 0)
    stop("Cannot download data. Check the internet connection.")
  
  invisible(0)
}
