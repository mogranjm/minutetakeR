find_template <- function(template_file){
    template_file <- system.file("rmarkdown", "templates", template_file),
                            package = "minutR")
    if(template_file == ""){
        stop("Couldn't locate template file ", template_file, call. = FALSE)
    }
}
