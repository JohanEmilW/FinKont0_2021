#Libraries

library(quantmod)

## Scraping S&P 500 data from Yahoo! Finance. The ticker is GSPC
environment_sp500 <- new.env()
suppressWarnings(getSymbols(c("^GSPC"), env = environment_indices, src = "yahoo",from = as.Date("1960-01-01"),
                            to = as.Date("2021-02-01")))

sp500 <- environment_sp500$GSPC

## Placing data into a more familiar data structure


df_sp500 <- data.frame(date = index(sp500), coredata(sp500))


