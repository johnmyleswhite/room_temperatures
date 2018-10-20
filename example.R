library("ggplot2")
library("lubridate")

temps <- read.csv("temperatures.csv")

temps <- transform(temps, time = ymd_hms(time))

head(temps)

ggplot(
    temps,
    aes(x = time, y = temperature, color = room)
) +
    geom_line()

ggsave("time_series.png", width = 14, height = 7)

