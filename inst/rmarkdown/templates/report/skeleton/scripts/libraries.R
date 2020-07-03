if (!require("pacman")) install.packages("pacman")
library(pacman)
if (!require("devtools")) install.packages("devtools")
if (!require("cjrmd")) devtools::install_github("cjber/cjrmd")
library(cjrmd)

pkgs <- c(
    "tidyverse",
    "devtools",
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
