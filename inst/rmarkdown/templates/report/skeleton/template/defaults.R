source(here("scripts/libraries.R"))

cjrmd::default_latex_chunk_opts()

## -- bib_opts
write.bib(pkgs, here("bib/rbib.bib"))
r <- citation()
write.bib(r, here("bib/rbib.bib"), append = TRUE)

# manual citations here
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
ggplot2::theme_set(cjrmd::cj_plot_theme)
