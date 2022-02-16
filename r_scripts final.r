# cteated file named station_pair 
station_pair<-aggregate(data_2017$tripduration_in_hrs, by=list(station_pair=data_2017$station_pair), FUN=sum)


month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S"))

data_2017$month_trip<-month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S"))

head(data_2017)

install.packages("stringr")

library("stringr")

str_count(data_2017$start_time, ":")

ifelse(str_count(data_2017$start_time, ":")==2, month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S")), month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M")))

data_2017$month_trip<-ifelse(str_count(data_2017$start_time, ":")==2, month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S")), month(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M")))

head(data_2017)

ifelse(str_count(data_2017$start_time, ":")==2, weekdays(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S")), weekdays(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M")))

data_2017$week_day<-ifelse(str_count(data_2017$start_time, ":")==2, weekdays(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M:%S")), weekdays(as.POSIXlt(data_2017$start_time, format="%m/%d/%Y %H:%M")))
> head(data_2017)

tail(data_2017)

aggregate(data_2017$tripduration_in_hrs, by=list(hours=data_2017$Hours_in_day), FUN=sum) 

install.packages("ggplot2")

library("ggplot2")

ggplot(Totaltripduration_sort_by_hrs, aes(x=hours, y=x))+geom_bar(stat = "identity")

View(data_2017)

paste(data_2017$from_station_id,data_2017$to_station_id,sep="-")
   [1] "66-171"  "199-26"  "520-432" "110-142" "327-331" "143-289" "81-41"   "56-77"   "210-69"  "117-29" 
  [11] "117-29"  "227-303" "199-26"  "59-2"    "67-250"  "333-210" "77-175"  "90-2"    "38-24"   "91-182"
  
 aggregate(data_2017$tripduration_in_hrs, by=list(station_pair=data_2017$station_pair), FUN=sum) 
   
summary(aggregate(data_2017$tripduration_in_hrs, by=list(station_pair=data_2017$station_pair), FUN=sum))
station_pair             x           
 Length:96236       Min.   :     2.2  
 Class :character   1st Qu.:    58.2  
 Mode  :character   Median :   167.4  
                    Mean   :   633.7  
                    3rd Qu.:   526.4  
                    Max.   :385087.8  
					
station_pair<-aggregate(data_2017$tripduration_in_hrs, by=list(station_pair=data_2017$station_pair), FUN=sum) 

ggplot(Weekdays_vs_tripduration, aes(x=weekdays, y=x))+geom_bar(stat = "identity")
# Corrected duration in hours which was in minutes
data_2017$tripduration_in_hours<- round((data_2017$tripduration_in_hrs/ 60), 2)
# calculated month Vs Tripduration in hours
aggregate(data_2017$tripduration_in_hours, by=list(month_trip=data_2017$month_trip), FUN=sum)
# made histogram for the calculation of month vs tripduration in hours
ggplot(Weekdays_vs_tripduration, aes(x=weekdays, y=x))+geom_bar(stat = "identity")
# calculated Hours_in_day Vs Tripduration in hours
aggregate(data_2017$tripduration_in_hours, by=list(Hours_in_day=data_2017$Hours_in_day), FUN=sum)
# made histogram for Hours_in_day Vs Tripduration in hours
ggplot(data_2017, aes(x=Hours_in_day, y=tripduration_in_hours))+geom_bar(stat = "identity")
# calculated usertype Vs Tripduration in hours
aggregate(data_2017$tripduration_in_hours, by=list(usertype=data_2017$usertype), FUN=sum)
# made histogram for usertype Vs Tripduration in hours
ggplot(data_2017, aes(x=usertype, y=tripduration_in_hours))+geom_bar(stat = "identity")

