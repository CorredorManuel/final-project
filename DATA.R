install.packages("quantmod")
library(quantmod)


tickers <- c("VSMPX","VFIAX","DODGX","SWPPX","RLBGX", "FSGEX","VGHAX","FPCIX",
             "FTBFX","BBCPX","PTTRX","FKINX","CAIBX","ABALX","AGTHX","GFFFX",
             "AMECX","TRBCX","PIMIX","FBKWX")


precios <- NULL
retornos_activos <- NULL

i <- 1
for (activos in tickers){
  precios <- cbind(precios, 
                           getSymbols.yahoo(Symbols =activos,index.class  = 'Date',from ="2017-05-01",
                                           to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6])
  
  retornos_activos <- cbind(retornos_activos,monthlyReturn(precios,leading = FALSE))
  
  i <- i + 1
}

colnames(precios)<-tickers
colnames(retornos_activos)<-tickers

precios <- as.data.frame(precios)
retornos_activos <- as.data.frame(retornos_activos)

