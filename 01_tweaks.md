# Some tricks when working with Hugo

For theme-even, the TOC isnot working as expected. In order to recover the Knitr-style TOC, set `toc = false` in `config.toml`, remove `toc: <boolean>` from the yaml header of your post and add 

    output:
      blogdown::html_page:
      number_sections: TRUE
    toc: TRUE

to the yaml header of your post.

Done.

#TODO

  + exclude h3+ from TOC
  + add "." :after TOC-numbering for H1,H2 in custom.css
  + add "Outline" :before TOC