#' Knit R Markdown to Agenda docx
#'
#' Render Meeting Agenda as a docx using the custom .docx file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param md_extensions Markdown extensions passed to Pandoc ("+" precursor indicates include, "-" precursor indicates exclude)
#' @param ... Arguments passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' # In a YAML Block
#' output: minutetakeR::agenda
#' ---

agenda_final <- function(..., keep_tex = TRUE,
                   md_extensions = c("+multiline_tables", "+escaped_line_breaks")){

    template <- find_template("agenda")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex,
        md_extensions = md_extensions
    )
}
#' Knit R Markdown to Agenda PDF
#'
#' Render Meeting Agenda as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param md_extensions Markdown extensions passed to Pandoc ("+" precursor indicates include, "-" precursor indicates exclude)
#' @param ... Arguments passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' # In a YAML Block
#' output: minutetakeR::agenda
#' ---

agenda_draft <- function(...){
    word_document_format(template_name = "agenda", ...)
}
