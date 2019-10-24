## ---- libs
library(pacman)

pkgs <- c(
    "tidyverse",
    "devtools",
    "Hmisc",
    "PerformanceAnalytics",
    "ggthemes",
    "RStoolbox",
    "broom",
    "viridis",
    "viridisLite",
    "ggpubr",
    "magrittr",
    "sf",
    "kableExtra",
    "scales",
    "lidR",
    "raster",
    "nvimcom",
    "varhandle",
    "future",
    "rgdal",
    "pbapply",
    "cowplot",
    "bibtex",
    "benchmarkme",
    "parallel",
    "showtext",
    "data.table",
    "wesanderson"
)

pacman::p_load(pkgs, character.only = T)

## -- themes
# map (blank with border)
cr_map_theme <- ggthemes::theme_map() +
    theme(panel.border = element_rect(
        colour = "white",
        fill = NA, size = 2
    ), legend.position = "none")

# plot, minimal publishable
showtext_auto()
font_add_google("Roboto", "Roboto")
font_add_google("Roboto Slab", "Roboto Slab")
cr_plot_theme <- ggplot2::theme_classic() +
    theme(
        axis.ticks.y = element_blank(),
        axis.line = element_blank(),
        axis.text = element_text(size = 9, family = "Roboto"),
        axis.title = element_text(size = 10, family = "Roboto Slab"),
        axis.text.y = element_blank(),
        legend.title = element_blank(),
        legend.position = "bottom",
        strip.background = element_blank(),
        panel.border = element_rect(colour = "black", fill = NA, size = 1)
    )
