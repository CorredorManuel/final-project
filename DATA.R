install.packages("quantmod")
library(quantmod)


tickers <- c("VSMPX","VFIAX","DODGX","SWPPX","RLBGX", "FSGEX","VGHAX","FPCIX",
             "FTBFX","BBCPX","PTTRX","FKINX","CAIBX","ABALX","AGTHX","GFFFX",
             "AMECX","TRBCX","PIMIX","FBKWX")


portfolioPrices <- NULL
i <- 1
for (activos in tickers){
  portfolioPrices <- cbind(portfolioPrices, 
                           getSymbols.yahoo(Symbols =activos,index.class  = 'Date',from ="2017-05-01",
                                            to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6])
  i <- i + 1
}

