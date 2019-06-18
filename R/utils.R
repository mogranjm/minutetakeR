#' A Helper function used for locating a LaTeX template file.
#'
#' Locates the custom .tex template file in the rmarkdown/templates directory
#' @param template Name of target document template
#' @param file Name of the target tex template for this document

find_template <- function(template, file = 'template.tex'){
    template_file <- system.file("rmarkdown", "templates", template, "resources", file,
                            package = "minutetakeR")
    if(template_file == ""){
        stop("Couldn't locate template file ", template_file, call. = FALSE)
    }
}
