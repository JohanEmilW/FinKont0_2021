library(quantmod)

# returns a list of data frames containing data on European options with expiry in either 2021 or 2022

euro_option_data <-  getOptionChain(Symbols = "^SPX", Exp = c("2021", "2022"),
                                    data_source = "yahoo")


