project_setup <- function() {
  dir.create("data")
  dir.create("reports")
  dir.create("docs")
  dir.create("R")
  file.create("data/README.md")
  writeLines("The data directory contains raw/processed data that I use in class + assessments", 
             "data/README.md")
  file.create("reports/README.md")
  writeLines("The reports directory contains Quarto documents that describe the analysis or report on results.", 
             "reports/README.md")
  file.create("docs/README.md")
  writeLines("The docs directory contains the rendered versions of the report.", 
             "docs/README.md")
  file.create("R/README.md")
  writeLines("The R directory contains code + notes that I've taken in class", 
             "R/README.md")
  return("SUCCESS!")
}

