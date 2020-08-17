## ---- libs
if (!require("pacman")) install.packages("pacman")
library(pacman)

pkgs <- c(
    "tidyverse"
)

pacman::p_load(pkgs, character.only = T)
cjrmd::default_latex_chunk_opts()
