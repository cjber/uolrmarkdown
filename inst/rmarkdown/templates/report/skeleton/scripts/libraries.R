if (!require("pacman")) install.packages("pacman")
if (!require("remotes")) install.packages("remotes")
if (!require("cjrmd")) remotes::install_github("cjber/cjrmd")

pkgs <- c(
    "here",
    "rstudioapi",
    "tidyverse",
    "ggthemes",
    "kableExtra",
    "scales",
    "cowplot",
    "bibtex",
    "benchmarkme",
    "showtext",
    "data.table"
)

pacman::p_load(pkgs, character.only = T)
