install.packages("quantmod")
library(quantmod)

tickers <- c("VSMPX","VFIAX","DODGX","SWPPX","RLBGX", "FSGEX","VGHAX","FPCIX",
             "FTBFX","BBCPX","PTTRX","FKINX","CAIBX","ABALX","AGTHX","GFFFX",
             "AMECX","TRBCX","PIMIX","FBKWX")
#DATOS ----

VSMPX<-getSymbols.yahoo(Symbols ="VSMPX",index.class  = 'Date',from ="2017-05-01",
                         to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]
  
VFIAX <-getSymbols.yahoo(Symbols ="VFIAX",index.class  = 'Date',from ="2017-05-01",
                          to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

DODGX<-getSymbols.yahoo(Symbols ="DODGX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

SWPPX<-getSymbols.yahoo(Symbols ="SWPPX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

RLBGX<-getSymbols.yahoo(Symbols ="RLBGX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

FSGEX<-getSymbols.yahoo(Symbols ="FSGEX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

VGHAX<-getSymbols.yahoo(Symbols ="VGHAX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

FPCIX<-getSymbols.yahoo(Symbols ="FPCIX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

FTBFX<-getSymbols.yahoo(Symbols ="FTBFX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

BBCPX<-getSymbols.yahoo(Symbols ="BBCPX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

PTTRX<-getSymbols.yahoo(Symbols ="PTTRX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

FKINX<-getSymbols.yahoo(Symbols ="FKINX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

CAIBX<-getSymbols.yahoo(Symbols ="CAIBX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

ABALX<-getSymbols.yahoo(Symbols ="ABALX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

AGTHX<-getSymbols.yahoo(Symbols ="AGTHX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

GFFFX<-getSymbols.yahoo(Symbols ="GFFFX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

AMECX<-getSymbols.yahoo(Symbols ="AMECX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

TRBCX<-getSymbols.yahoo(Symbols ="TRBCX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

PIMIX<-getSymbols.yahoo(Symbols ="PIMIX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

FBKWX<-getSymbols.yahoo(Symbols ="FBKWX",index.class  = 'Date',from ="2017-05-01",
                        to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6]

datos <- Reduce(merge,list(VSMPX,VFIAX,DODGX,SWPPX,RLBGX,FSGEX,VGHAX,FPCIX,FTBFX,BBCPX,
                           PTTRX,FKINX,CAIBX,ABALX,AGTHX,GFFFX,AMECX, TRBCX,PIMIX,FBKWX))


#Retornos ----

VSMPX <-monthlyReturn(VSMPX,leading = FALSE)
VFIAX<- monthlyReturn(VFIAX,leading = FALSE)
DODGX<- monthlyReturn(DODGX,leading = FALSE)
SWPPX<- monthlyReturn(SWPPX,leading = FALSE)
RLBGX<- monthlyReturn(RLBGX,leading = FALSE)
FSGEX<- monthlyReturn(FSGEX,leading = FALSE)
VGHAX<- monthlyReturn(VGHAX,leading = FALSE)
FPCIX<- monthlyReturn(FPCIX,leading = FALSE)
FTBFX<- monthlyReturn(FTBFX,leading = FALSE)
BBCPX<- monthlyReturn(BBCPX,leading = FALSE)
PTTRX<- monthlyReturn(PTTRX,leading = FALSE)
FKINX<- monthlyReturn(FKINX,leading = FALSE)
CAIBX<- monthlyReturn(CAIBX,leading = FALSE)
ABALX<- monthlyReturn(ABALX,leading = FALSE)
AGTHX<- monthlyReturn(AGTHX,leading = FALSE)
GFFFX<- monthlyReturn(GFFFX,leading = FALSE)
AMECX<- monthlyReturn(AMECX,leading = FALSE)
TRBCX<- monthlyReturn(TRBCX,leading = FALSE)
PIMIX<- monthlyReturn(PIMIX,leading = FALSE,)
FBKWX<- monthlyReturn(FBKWX,leading = FALSE)


retornos <- Reduce(merge,list(VSMPX,VFIAX,DODGX,SWPPX,RLBGX,FSGEX,VGHAX,FPCIX,FTBFX,BBCPX,
                           PTTRX,FKINX,CAIBX,ABALX,AGTHX,GFFFX,AMECX, TRBCX,PIMIX,FBKWX))


test




portfolioPrices <- NULL
i <- 1
for (tickers in activos){
  portfolioPrices <- cbind(portfolioPrices, 
                           getSymbols.yahoo(Symbols ="TRBCX",index.class  = 'Date',from ="2017-05-01",
                                            to="2022-03-02",periodicity = "monthly",auto.assign = FALSE)[,6])
  i <- i + 1
}



document