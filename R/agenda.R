#' Knit R Markdown to Agenda PDF
#'
#' Render Meeting Agenda as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param
#'   ...,latex_engine,citation_package,highlight,fig_caption,md_extensions
#'   Args passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' output: minutetakeR::agenda
#' ---

agenda <- function(..., keep_tex = TRUE){

    template <- find_template("agenda")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex
    )
}
