# Some frequently used functions for Publishing with Blogdown/Hugo

## Preview
### Render with visibility in local network
blogdown::serve_site(host = '0.0.0.0')
### regular preview
blogdown::serve_site()
### Stop Server & restart R-Session if needed
blogdown::stop_server()
.rs.restartR()

## PUBSLISH
blogdown::hugo_build()

## default options
put them in > 

file.edit("~/.Rprofile")

options(servr.daemon = TRUE)
options(blogdown.author = "Ilja / fubits")
options(blogdown.ext = ".Rmd")
options(blogdown.widgetsID = TRUE)

### as per Yihui: Speed improvements
(install.packages("processx"))
options(blogdown.generator.server = TRUE) # see serve_site() docs
options(blogdown.hugo.server = c("-D", "-F", "--navigateToChanged"))

+ newline (a la git)

## Formula
$A = \pi*r^{2}$

## hardcoded slug (if slug/title/whatever has changed, so that Rmd filename differs)
hardslug: 2018-10-27-election-hacking-exploring-10-million-tweets-from-the-russian-internet-research-agency-dataset-pt-2-nlproc-corpus-dfm

## Links
### external
[Text](URL){target="_blank"}

### relative links
[Text](/post/slug)
[Text](#anchor)

## Data
### (deprecated)
../../data/

### elegant with here()
data_path <- here::here("data", "IRA_Tweets", "/")

## Read from other source files
  
  ```{r setup}
  knitr::read_chunk("example.R")
  ```
  
  example.R # add chunk marker in source file (## ---- chunk)
  
  ## ---- chunk
  1 + 1


## Sound for longer tasks
BRRR::skrrrahh("flava") # play sound when ready

## Picture w italic formatting and Link
![*(Screenshot of the GitLab Dashboard for the GitHub Importer on June 4th; [Source](https://monitor.gitlab.net/dashboard/db/github-importer?orgId=1&from=1528041600000&to=now))*](/img/GitLab_JSON/gitlab_dashboard.jpg "alt-text")

![*(73 Topics, K auto-induced with t-SNE/PCA, modelled with the stm()-package )*](/img/GitLab_JSON/gitlab_dom2.jpg "alt-text")

## Emojis
`r emo::ji("smile")`
List : https://github.com/hadley/emo

## Undocumented
### Skimr
options(knitr.table.format = "html") OR
skimr::skim_to_wide(noten_raw) %>% knitr::kable("html", 2)

### Tweets
#### Shortcode
{{< tweet 981532034106576901 >}} # Markdon

#### R Markdown / Chunk
```{r echo=FALSE}
blogdown::shortcode('tweet', '852205086956818432')
```
