library(rvest)
library(dplyr)
link <- 'https://studentwork.prattsi.org/infovis/visualization/evolution-of-mobile-phone/'
web <- read_html(link)
mobile_names <- web %>% html_nodes("h2+ h2") %>% html_text()
View(mobile_name)
mobile_year_of_lanching <- web %>% html_nodes ("h2:nth-child(24)") %>% html_text()
View(mobile_year_of_lanching)
web_page_link <- web %>% html_nodes (".has-black-background-color a:nth-child(1)") %>% html_text()
View(web_page_link)
history_of_mobiles <- data.frame(mobile_names, mobile_year_of_lanching, web_page_link)
View(history_of_mobiles)

