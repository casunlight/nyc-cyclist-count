#!/usr/bin/env Rscript
library(plyr)
library(reshape2)
# library(ggplot2)

cyclists <- read.csv('cyclists.csv', stringsAsFactors = F)
rownames(cyclists) <- strptime(paste(cyclists$Month, ' 1, ', cyclists$Year, sep = ''), format='%B %d, %Y')
cyclists$Date <- rownames(cyclists)
cyclists$Month <- NULL
cyclists$Year <- NULL
cyclists$Grand.Total <- NULL

# cyclists <- melt(cyclists, 'Date', variable.name = 'Bridge', value.name = 'Cyclists')
# cyclists$Date <- as.POSIXct(cyclists$Date)
