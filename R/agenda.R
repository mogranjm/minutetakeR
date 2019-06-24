#' Knit R Markdown to Agenda PDF
#'
#' Render Meeting Agenda as a docx using the custom .docx file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param ... Arguments passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' # In a YAML Block
#' output: minutetakeR::agenda_pdf
#' ---

agenda_pdf <- function(keep_tex = TRUE, ...){
    pdf_document_format(
        template_name = "agenda_pdf",
        keep_tex = keep_tex,
        md_extensions = md_extensions,
        ...
    )
}


#' Knit R Markdown to Agenda docx
#'
#' Render Meeting Agenda as a PDF using the custom .tex file
#' @param ... Arguments passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' # In a YAML Block
#' output: minutetakeR::agenda_doc
#' ---

agenda_doc <- function(...){
    word_document_format(
        template_name = "agenda_doc",
        ...
    )
}
