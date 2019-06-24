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

# Including custom latex and docx style template
#' A Helper function to create a custom word format, based on word_document.
#'
#' Locates the custom .tex template file in the rmarkdown/templates directory
#' @param template_name Name of target document template
#' @param docx_template Name of the target docx template for this document
#' @param pandoc_args Arguments passed to Pandoc
#' @param ... Arguments passed to \code{rmarkdown::\link{word_document_format}()}.
word_document_format <- function(
    template_name,
    docx_template = find_resource(template_name, 'style-reference.docx'),
    ...
){
    fmt <- rmarkdown::word_document(
        ...,
        reference_docx = docx_template
    )
    fmt$inherits <- "word_document"
    fmt
}
