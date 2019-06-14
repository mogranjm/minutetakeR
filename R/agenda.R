#' Knit R Markdown to Agenda PDF
#'
#' Render Meeting Agenda as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param md_extensions Extensions to pass to Pandoc
#' @param ... Args passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @example
#' ---
#' output: minutetakeR::agenda
#' ---

agenda <- function(..., keep_tex = TRUE,
                   md_extensions = c("-multiline_tables", "-grid_tables")){

    template <- find_template("agenda")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex,
        md_extensions = md_extensions
    )
}
