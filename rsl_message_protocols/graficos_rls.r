# Libraries
library(tidyverse)
library(hrbrthemes)

# Load dataset from github
data <- read.table("revisao_sistematica_anos.csv", header=TRUE)

png("rplot.png")
# plot
p <- data %>%
  filter( price<300 ) %>%
  ggplot( aes(x=price)) +
    geom_histogram( binwidth=3, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
    ggtitle("Bin size = 3") +
    theme_ipsum() +
    theme(
      plot.title = element_text(size=15)
    )
#p
dev.off()
