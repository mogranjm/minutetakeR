#' A Helper function used for locating a LaTeX template file.
#'
#' Locates the custom .tex template file in the rmarkdown/templates directory
#' @param template_file Name of target template file

find_template <- function(template, file = 'template.tex'){
    template_file <- system.file("rmarkdown", "templates", template, "resources", file,
                            package = "minutetakeR")
    if(template_file == ""){
        stop("Couldn't locate template file ", template_file, call. = FALSE)
    }
}
