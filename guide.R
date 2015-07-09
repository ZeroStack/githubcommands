# Set working directory to directory where the files are located
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

library(knitr)
library(markdown)

knit("document.Rmd")
markdownToHTML("document.md", "document.html", options = c("use_xhml"))