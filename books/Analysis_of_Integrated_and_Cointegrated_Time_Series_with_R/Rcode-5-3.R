library(urca)
library(uroot)
data(UKconinc)
attach(UKconinc)
incl <- ts(incl, start=c(1955,1), end=c(1984,4), frequency=4)
incllist <- list(vari=incl, s=4, t0=c(1955, 1), N=length(incl))
HEGY000 <- HEGY.test(label=incllist, compdet=c(0, 0, 0), selecP=c(1,4,5), Mvfic=0, VFEp=0, showcat=FALSE)  
HEGY100 <- HEGY.test(label=incllist, compdet=c(1, 0, 0), selecP=c(1,4,5), Mvfic=0, VFEp=0, showcat=FALSE)
HEGY110 <- HEGY.test(label=incllist, compdet=c(1, 1, 0), selecP=c(1,4,5), Mvfic=0, VFEp=0, showcat=FALSE)
HEGY101 <- HEGY.test(label=incllist, compdet=c(1, 0, 1), selecP=c(1,4,5), Mvfic=0, VFEp=0, showcat=FALSE)
HEGY111 <- HEGY.test(label=incllist, compdet=c(1, 1, 1), selecP=c(1,4,5), Mvfic=0, VFEp=0, showcat=FALSE)
