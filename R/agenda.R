#' Knit R Markdown to Minutes PDF
#'
#' Render Meeting Agenda as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @export
#' @example
#' ---
#' output: minutr::agenda
#' ---

agenda <- function(..., keep_tex = TRUE){

    template <- find_template("agenda.tex")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex
    )
}
