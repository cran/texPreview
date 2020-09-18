## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(texPreview)

## -----------------------------------------------------------------------------
# add tikz support to tex_opts
use_lib <- "\\usetikzlibrary{arrows,shapes,snakes,automata,backgrounds,arrows.meta,positioning}"

objpath <- file.path(getwd(),"tikz_files/figure-html")

if(!dir.exists(objpath))
  dir.create(objpath,recursive = TRUE)

tex_opts$set(
  fileDir    = objpath, # path to save output
  returnType  = 'html',
  usrPackages = build_usepackage(pkg = 'tikz',uselibrary = use_lib)
)

## -----------------------------------------------------------------------------
tikz_examples <- list.files(system.file('examples/tikz',package = 'texPreview'),
                          pattern = 'tex$',full.names = TRUE)
tikz_code <- lapply(tikz_examples,
                    function(x) paste0(readLines(x),collapse = '\n'))
names(tikz_code) <- basename(tikz_examples)

## -----------------------------------------------------------------------------
tex_preview(obj = tikz_code$pk_model.tex,stem = 'tikz-1')

## ----echo=FALSE---------------------------------------------------------------
details::details(tikz_code$pd_model.tex,summary = 'Click to view TeX',lang = 'tex')

## -----------------------------------------------------------------------------
tex_preview(tex_lines = tikz_code$credit_rationing.tex,stem = 'tikz-2')

## ----echo=FALSE---------------------------------------------------------------
details::details(tikz_code$credit_rationing.tex,summary = 'Click to view TeX',lang = 'tex')

