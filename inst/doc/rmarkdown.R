## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(texPreview)

tex_opts$set( 
  returnType = 'html',
  opts.html   = list(width = '75%', height = '75%')
)


## ----testOut------------------------------------------------------------------

knitr::kable(head(iris,5),format = 'latex')%>%
tex_preview()


## ----testOut2-----------------------------------------------------------------
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


