library(dplyr)
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df)

summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df))