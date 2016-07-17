###lesson2 02-DataObservation-02-MultiVariables
View(hsb)
tab1 <- table(hsb$sex, hsb$schtyp)
barplot(tab1, legend=TRUE)
barplot(tab1, legend=TRUE, beside = TRUE, args.legend=list(x=3, y=90))
install.packages(dplyr)
library(dplyr)
dat2 <- summarise(group_by(hsb, sex, schtyp), math.avg=mean(math))
tab2 <- xtabs(formula = math.avg ~ sex +schtyp , data = dat2)
?lm
barplot(tab2, beside = TRUE, ylim = c(50, 58), xpd = FALSE) #分組長條途在50 58
dat3 <- summarise(group_by(hsb, race), read.med=median(read))
barplot(dat3$read.med, names.arg=dat3$race, horiz = TRUE)  #水平長條圖
dotchart(dat3$read.med, labels = dat3$race)
plot(math ~race, data=hsb)
?boxplot
boxplot(math ~ schtyp, data=hsb, col=c("darkblue", "gold"))#多類別欄位加上顏色比較
legend("topleft", c("private", "public"), fill=c("darkblue", "gold"))
plot(x=hsb$math, y=hsb$read) #散點圖 觀察正相關
plot(~read+math,data = hsb)
plot(~read+math+science+socst,data=hsb, main="HSB score")
col.sex <- ifelse(hsb$sex=="male", "#e34a3355", "#2c7fb855")
pch.schtyp <- ifelse(hsb$schtyp=="public", 1, 19)
cex.science <- (hsb$science-25)/(50)*5
plot(~read+math, data=hsb, col=col.sex,pch=pch.schtyp, cex=cex.science)

