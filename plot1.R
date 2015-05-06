require(plyr)
require(dplyr)

x <- tbl_df(read.table("exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",stringsAsFactors = F,header=T))
y <- x %>% mutate(Date = as.Date(Date,'%d/%m/%Y')) %>% filter(Date >= "2007-02-01", Date <= "2007-02-02") %>% mutate(Global_active_power = as.numeric(Global_active_power))


png("plot1.png",width = 480,height = 480)
hist(y$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.off()
