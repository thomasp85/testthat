#' Load package, if available
#'
#' Quietly load a package if it is install, otherwise do nothing.  This is
#' useful for testing files so that you can run them while you are developing
#' your package, before it is installed for the first time; and continue to
#' have the same code work when the tests are run automatically by R CMD
#' CHECK.
#'
#' @param package package name (without quotes)
#' @examples
#' library_if_available(testthat)
#' library_if_available(packagethatdoesntexist)
library_if_available <- function(package) {
  package <- deparse(substitute(package))
  
  suppressWarnings(suppressPackageStartupMessages(
    require(package, quietly = TRUE, warn.conflicts = FALSE)
  ))
}