library(dplyr)
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df)

summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df))


Suspension_Coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Meane=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI), .groups = 'keep') #create summary table

total_summary<-Suspension_Coil_data %>% summarize(Meane=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI))
