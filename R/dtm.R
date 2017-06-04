#' Wrapper for dtm
#'
#' Wraps the dtm executable. WIP.
#'
#' @export
#' @param args parameters passed to the main dtm program
#' @examples # Run help page
#' dtm("--help")
dtm <- function(args = "--help") {
  exec <- file.path(system.file(paste0("bin", .Platform$r_arch), package = "dtm"), 'main')
  sys::exec_wait(exec, args)
}
