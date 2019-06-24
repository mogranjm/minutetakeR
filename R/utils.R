#' A Helper function used for locating a LaTeX template file.
#'
#' Locates the custom .tex template file in the rmarkdown/templates directory
#' @param template Name of target document template
#' @param file Name of the target template for this document

find_template <- function(template, file){
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
#' @param ... Arguments passed to \code{rmarkdown::\link{word_document_format}()}.
pdf_document_format <- function(template_name, ...){
    template <- find_template(template_name, 'template.tex')

    fmt <- rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex,
        md_extensions = c("+multiline_tables", "+escaped_line_breaks")
    )

    fmt$inherits <- "pdf_document"
    fmt
}

# Including custom latex and docx style template
#' A Helper function to create a custom word format, based on word_document.
#'
#' Locates the custom .tex template file in the rmarkdown/templates directory
#' @param template_name Name of target document template
#' @param ... Arguments passed to \code{rmarkdown::\link{word_document_format}()}.
word_document_format <- function(template_name, ...){

    docx_template = find_template(template_name, 'style-reference.docx')

    fmt <- rmarkdown::word_document(
        ...,
        reference_docx = docx_template
    )
    fmt$inherits <- "word_document"
    fmt
}
