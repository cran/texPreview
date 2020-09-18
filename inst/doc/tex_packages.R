## -----------------------------------------------------------------------------
library(texPreview)

## -----------------------------------------------------------------------------
build_usepackage(pkg = 'xcolor')

## -----------------------------------------------------------------------------
build_usepackage(pkg = 'xcolor',options = 'usenames')

## -----------------------------------------------------------------------------
geom.opts=c('paperwidth=35cm','paperheight=35cm','left=2.5cm','top=2.5cm')
use.opts="\\usetikzlibrary{mindmap,backgrounds}"

m <- mapply(
  FUN        = build_usepackage,
  pkg        = list('times','geometry','tikz'),
  options    = list(NULL   ,geom.opts ,NULL),
  uselibrary = list(NULL   ,NULL      ,use.opts)
)

unlist(m)


