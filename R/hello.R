#' Say hello to a name
#'
#' A minimal example function demonstrating roxygen2 documentation,
#' input validation with `cli`, and namespace-qualified calls.
#' Replace this with your own exported functions.
#'
#' @param name A character string. The name to greet.
#'
#' @return A character string of the form `"Hello, <name>!"`.
#'
#' @examples
#' hello("world")
#' hello("R")
#'
#' @export
hello <- function(name) {
  if (!is.character(name) || length(name) != 1L) {
    cli::cli_abort("{.arg name} must be a single character string.")
  }
  paste0("Hello, ", name, "!")
}
