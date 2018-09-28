# SETUP procedure

## INIT
## blogdown::new_site(theme = "olOwOlo/hugo-theme-even")
### don't forget to change publishDir in config.toml

# Some frequently used functions for Publishing with Blogdown/Hugo

# esp. in case of seImpl / tomlparseImpl() errors

.rs.restartR()

# Stop Server & restart R-Session if needed
blogdown::stop_server()

# Preview
blogdown::serve_site()

# PUBSLISH (better than blogdown::build_site())
blogdown::hugo_build()


# Undocumented (yet)
#####
# Links
[Text](URL){target="_blank"}


thumbnail: "/img/thumbs/file.jpg" # Optional

{{< tweet 981532034106576901 >}} # Markdon

#R Markdown

```{r echo=FALSE}
blogdown::shortcode('tweet', '852205086956818432')
```
#####

# YAML Header
output:
  blogdown::html_page:
    number_sections: TRUE
    toc: TRUE
keywords: []
description: ""
thumbnail: "/img/thumbs/map_asia.jpg" # Optional
rmdlink: TRUE # Optional