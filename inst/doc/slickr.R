## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.keep = "all",
  out.width = '75%',
  dev = c("png", "svg")
)

## ------------------------------------------------------------------------
library(texPreview)
library(slickR)

## ------------------------------------------------------------------------

objpath <- file.path(getwd(),"slickr_files/figure-html")

if(!dir.exists(objpath))
  dir.create(objpath,recursive = TRUE)

tex_opts$set(
  fileDir    = objpath, # path to save output
  returnType = 'html', # return images ready for html 
  imgFormat  = 'png' # return png images
  )

## ----kable---------------------------------------------------------------

knitr::kable(mtcars,'latex')%>%
  texPreview::tex_preview(stem = 'kable-1')


## ----tex-----------------------------------------------------------------

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
  texPreview::tex_preview(stem = 'tex-1')

## ----testOut3------------------------------------------------------------

  slickR::slickR(
    list.files(objpath,full.names = TRUE,pattern = 'png'),
    height = 200,
    width = '95%')


