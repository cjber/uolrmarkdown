source("./scripts/functions.r")

## -- chunk_opts
knitr::opts_knit$set(self.contained = TRUE)
knitr::opts_chunk$set(
    fig.align = "center", fig.pos = "tb",
    fig.showtext = TRUE,
    cache = FALSE, autodep = FALSE, echo = FALSE,
    cache.path = "data/cache/",
    message = FALSE, size = "footnotesize",
    background = rgb(0.97, 0.97, 0.97),
    warning = FALSE,
    comment = NA, out.width = ".75\\linewidth"
)
# fix some warning messages
knitr::knit_hooks$set(document = function(x) {
    sub("\\usepackage[]{color}",
        "\\usepackage{xcolor}", x,
        fixed = TRUE
    )
})

## -- bib_opts
write.bib(pkgs, "bib/rbib.bib")
r <- citation()
write.bib(r, "bib/rbib.bib", append = TRUE)

# manual citations here..
man_bib <-
    "@Manual{QGIS,
    title = {QGIS Geographic Information System},
    author = {{QGIS Development Team}},
    organization = {Open Source Geospatial Foundation},
    year = {2019},
    url = {http://qgis.org},
  }"

## Uncomment to add additional citations
# write(man_bib, "bib/rbib.bib", append = TRUE)

## -- plot_theme
ggplot2::theme_set(cr_plot_theme)
