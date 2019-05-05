## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(texPreview)
library(magrittr)

tex_opts$set(
  returnType = knitr::opts_knit$get('rmarkdown.pandoc.to'),
  resizebox = FALSE  
)


## ----testOut-------------------------------------------------------------

knitr::kable(head(iris,5),format = 'latex')%>%
tex_preview()


## ----testOut2------------------------------------------------------------
tab='
\\begin{tabular}{llr}
\\hline
\\multicolumn{2}{c}{Item} \\\\
\\cline{1-2}
Animal    & Description & Price (\\$) \\\\
\\hline
Gnat      & per gram    & 13.65      \\\\
          & each        & 0.01       \\\\
Gnu       & stuffed     & 92.50      \\\\
Emu       & stuffed     & 33.33      \\\\
Armadillo & frozen      & 8.99       \\\\
\\hline
\\end{tabular}'

tab%>%
  tex_preview()


