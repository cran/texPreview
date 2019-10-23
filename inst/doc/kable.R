## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(texPreview)

tex_opts$set( 
  returnType = 'html',
  opts.html   = list(width = '50%', height = '50%')
)


## ------------------------------------------------------------------------

tex_file <- system.file('examples/toy/toy.tex',package = 'texPreview')


## ------------------------------------------------------------------------

readLines(tex_file)


## ------------------------------------------------------------------------

kbl <- tex_file%>%
  texPreview::as.kable()


## ------------------------------------------------------------------------

kbl%>%
  texPreview::tex_preview()


## ------------------------------------------------------------------------

kbl%>%  
  kableExtra::collapse_rows(columns = 1:2, 
                            latex_hline = "major", 
                            valign = "middle")%>%
  texPreview::tex_preview()


