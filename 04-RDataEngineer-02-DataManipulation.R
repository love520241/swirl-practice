##04-RDataEngineer-02-DataManipulation 

install.packages(dplyr)
library(dplyr)
vignette(package = "dplyr")
vignette("introduction", package = "dplyr")  ##打開介紹
install.packages("nycflights13")
library(nycflights13)
length(flights) ##X
nrow(flights)
filter(flights, month == 1, day == 1)
filter(flights, month == 1, day == 2)
?grepl
filter(flights, grepl(pattern = "AA", x = tailnum, fixed = TRUE))
slice(flights, 10000:20000)
arrange(flights, month, day,dep_time)
min(flights$dep_time)
min(flights$dep_time, na.rm = TRUE) #最小值忽略NA
arrange(flights, desc(month), desc(day), desc(dep_time))
select(flights, year, month, day) #SQL
colnames(flights)
select(flights, year:day)          #year~day
select(flights, -(year:day))       #反之
distinct(select(flights, year:day)) #distinct就是SQL 的`DISTINCT`。
mutate(flights,gain = arr_delay - dep_delay)
summarise(flights, mean(dep_delay, na.rm = TRUE)) #計算平均
sample_n(flights, 10)              #取樣
sample_frac(flights, 0.01)
df <- group_by(flights, month)

answer05
View(cl_info)
