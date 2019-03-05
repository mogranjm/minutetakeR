minutes <- function(..., keep_tex = TRUE){

    template <- find_template("minutes.tex")

    rmarkdown::pdf_document(
        template = template,
        keep_tex = keep_tex
    )
}
