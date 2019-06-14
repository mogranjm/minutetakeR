#' Knit R Markdown to Minutes PDF
#'
#' Render Meeting Minutes as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit
#' @param ... Args passed to \code{rmarkdown::\link{pdf_document}()}.
#' @export
#' @examples
#' ---
#' # In YAML header
#' output: minutetakeR::minutes
#' ---

minutes <- function(..., keep_tex = TRUE){

    template <- find_template("minutes")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex
    )
}
