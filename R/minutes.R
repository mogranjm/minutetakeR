#' Knit R Markdown to Minutes PDF
#'
#' Render document as a PDF using the custom .tex file
#' @param keep_tex Is TRUE by default. Set FALSE to discard intermediate .tex file during knit

minutes <- function(..., keep_tex = TRUE){

    template <- find_template("minutes.tex")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex
    )
}
