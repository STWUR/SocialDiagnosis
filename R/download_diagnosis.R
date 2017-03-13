#' Download data from Social Diagnosis
#'
#' Download data from Social Diagnosis
#'
#' @param dir_name target directory for data.
#' @param language \code{PL} for data in Polish or \code{EN} for data in English.
#' @return Invisible 0.
#' @details The size of Social Diagnosis data is around 60 MB.
#' @export


download_diagnosis <- function(dir_name = "diagnosis_data") {

  dir.create(dir_name)

  # can_download1 <- download.file(url = "https://github.com/STWUR/Diagnoza_dane/raw/master/osoby.RData",
  #                               destfile = paste0(dir_name, "/osoby.RData"))
  can_download2 <- download.file(url = "https://github.com/STWUR/Diagnoza_dane/raw/master/osobyDict.RData",
                                 destfile = paste0(dir_name, "/osobyDict.RData"))

  # if(can_download1 + can_download2 != 0)
  #   stop("Cannot download data. Check the internet connection.")

  invisible(0)
}
