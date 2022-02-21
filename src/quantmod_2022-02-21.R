# https://bookdown.org/kochiuyu/Technical-Analysis-with-R/quantmod.html
# https://cran.r-project.org/web/packages/quantmod/quantmod.pdf
# install.packages("quantmod")
library(quantmod)
LARGAN <- getSymbols("3008.TW", from="2010-1-1")
LARGAN <- na.omit(LARGAN) # remove the NA Value
dim('LARGAN')
summary('LARGAN')
head(LARGAN)
#get Chart
chartSeries(LARGAN)
#change theme likely TWstock
chartSeries(to.monthly(LARGAN),theme="white",up.col = "red",dn.col = "green")

getSymbols("AAPL", from='2000-01-01',to='2022-02-21')
head(AAPL)
chartSeries(AAPL,
            type="line",
            subset='2007',
            theme=chartTheme('white'))
# add TTR
addSMA()
addSMA(60)
addBBands() #布林通道
addMACD()
addRSI()
