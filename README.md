# UoL R Markdown

Install with:

```r
devtools::install_github("cjber/uolrmarkdown")
```

If using RStudio:

`New File -> R Markdown -> From Template -> UoL R Markdown`

Otherwise:

```r
rmarkdown::draft(
  'index.Rmd', template = 'report', 
  package = 'chapterreport', create_dir = TRUE
)
```

[R Markdown Help](https://bookdown.org/yihui/rmarkdown/)

# Example Images

Chapter Report |  Two Column Article
:-------------------------:|:-------------------------:
![](https://github.com/cjber/uolrmarkdown/blob/master/chapter.png)  |  ![](https://github.com/cjber/uolrmarkdown/blob/master/twocol.png)
![](https://raw.githubusercontent.com/cjber/chapterreport/master/example.png)

# Customisation

Customisation of the knitr chunks can be accessed through `template -> defaults.r`. Here additional citations may be manually added if required e.g. QGIS. Additionally the default ggplot2 theme is set here.

`scripts -> functions.r` provides an example r script for loading in required packages and defining custom functions. I generally use `source("./functions.r")` with my scripts to prevent loading the required libs each time.

The main bib file is given in `bib/kbib.bib` I use Zotero to generate bibtex.

For the article template for the written work only the main `.Rmd` needs editing, but in the chapter report each individual chapter should be edited separately.
