# REF：https://www.r-graph-gallery.com/156-interactive-streamgraph-with-legend.html

# Library
# install.packages("devtools")
devtools::install_github("hrbrmstr/streamgraph")
library(streamgraph)
# library(magrittr)
# Create data:
data <- data.frame(
  year=rep(seq(1990,2016) , each=10),
  name=rep(letters[1:10] , 27),
  value=sample( seq(0,1,0.0001) , 270)
)
str(data)
library(readr)
result_ori <- read_csv("data/CDC_19CoV_day_20210522_133417_Big5.csv", 
                       col_types = cols(.default = col_character()), 
                       locale = locale(encoding = "BIG5"))# View(result)

# Stream graph with a legend
pp <- streamgraph(data, key="name", value="value", date="year", height="300px", width="1000px") %>%
  sg_legend(show=TRUE, label="names: ")


# save the widget
library(htmlwidgets)
saveWidget(pp, file=paste0( getwd(), "/HtmlWidget/streamgraphDropdown.html")) # 
