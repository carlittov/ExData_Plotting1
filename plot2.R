require(plyr)
require(dplyr)

x <- tbl_df(read.table("exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",stringsAsFactors = F,header=T))
y <- x %>% mutate(Date = as.Date(Date,'%d/%m/%Y')) %>% filter(Date >= "2007-02-01", Date <= "2007-02-02") %>% mutate(Global_active_power = as.numeric(Global_active_power),datetime = as.POSIXct(paste(Date,Time)))
png("plot2.png",width = 480,height = 480)
plot(y$datetime,y$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)" ,type="l")
dev.off()