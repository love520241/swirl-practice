library(swirl)
swirl()
#jerry---name
#2 choose lesson
#start lesson  01-DataObservation-01-SingleVariable from DSC2016-R
skip()
?infert
View(infert)
spon <- infert$spontaneous
integer
plot(spon)
spon <- factor(spon)                          #轉型態
plot(spon)
table(spon)                                   # 統計
pie(table(spon))                              #圓餅圖
age <- infert$age
plot(age)                                     #散點
plot(age,type ="l")                           #折線圖
x <- hist(age)                                #直方圖
x
sum(age > 26 & age <= 28)
?cut
cut(1:10 , 2:4)
plot(cut(age, breaks = x$breaks))
infert$education
plot(density(age))                            #曲線分布
plot(density(age, bw = 0.1))
plot(density(age , bw = 1))
plot(density(age, bw ="SJ"))                  #bw
##################################
#"Time Series"型態是R專門用來處理時間序列的型態。
sunspot.year
plot(sunspot.year)
x <- tail(sunspot.year,100)
x
plot(x)
lines(x)                                      #折線圖加上點     
lines(x, lty = 3 ,lwd =3, col = 2)            #lty直線虛線、lwd線段粗細、col線段顏色
dst <- tempfile(fileext = ".png")
savePlot(dst ,type = "png")
png(dst)
plot(x)
dev.off()
library(rstudioapi)
####初始繪圖
skip()
###############
View(hsb)
plot(density(hsb$write, bw ="SJ"))
pie(table(hsb$sex))
submit()
