### 03-RDataEngineer-01-Loading n Parsing

###檔案中讀取CSV的資料並加以處理。
readBin(hospital_path,"raw",n = 3L)
readLines(file(hospital_path,encoding = "UTF-8"),n = 3)
readLines(file(hospital_path,encoding = "BIG5"),n=3)#改變編碼
hospital<-read.table(file(hospital_path,encoding = "BIG5"),header = TRUE,sep = ",")
read.table(hospital_path,fileEncoding="BIG5",sep=",",header=TRUE,nrows=5)
hospital$YEARYY
?substring
substring(head(hospital$YEARYY),1,3)
?strsplit
yearyy<-as.character(hospital$YEARYY)
tmp<-strsplit(yearyy,"Q")
head(tmp)
tmp[[1]][1]
length(tmp) #長度
?lapply
lapply(tmp,"[",1)#取出tmp中每個元素（字串向量）的第一個欄位
lapply(tmp,"[",2)#取出tmp中每個元素（字串向量）的第二個欄位
tmp2 <- lapply(tmp, "[",1)
unlist(tmp2)#取得字串向量
sapply(tmp,"[",1)
##當我們想要從文字中擷取出資訊時，都可以優先考慮運用`substring`或`strsplit`來擷取資訊。
##而當R把資訊放成非結構化的list物件中，我們可以運用`lapply`或`sapply`做資料的整理。
