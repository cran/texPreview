Map(
    function(x) knitr::knit(x, output = gsub('\\.orig$','',x)), 
    file.path('vignettes',list.files('vignettes',pattern = 'orig$'))
)
