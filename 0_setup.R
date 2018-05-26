# SETUP procedure

## INIT
## blogdown::new_site(theme = "olOwOlo/hugo-theme-even")
### don't forget to change publishDir in config.toml



# Some frequently used functions for Publishing with Blogdown/Hugo

# esp. in case of seImpl / tomlparseImpl() errors

.rs.restartR()

# Preview
blogdown::serve_site()

# Stop Server & restart R-Session if needed
blogdown::stop_server()

# PUBSLISH (better than blogdown::build_site())
blogdown::hugo_build()

