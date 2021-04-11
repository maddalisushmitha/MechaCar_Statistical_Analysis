#Deliverable 1
library(dplyr)
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=df))

#Deliverable 2
Suspension_Coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Meane=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI), .groups = 'keep') #create summary table
total_summary<-Suspension_Coil_data %>% summarize(Meane=mean(PSI),Median=median(PSI),Variance=var(PSI),sd(PSI))
#Deliverable 3
sample_table <- Suspension_Coil_data %>% sample_n(75) #generate 75 randomly sampled data points
t.test(sample_table[['PSI']], mu=mean(Suspension_Coil_data[['PSI']]))

Lot1_data = subset(Suspension_Coil_data, Manufacturing_Lot == 'Lot1')
Lot2_data = subset(Suspension_Coil_data, Manufacturing_Lot == 'Lot2')
Lot3_data = subset(Suspension_Coil_data, Manufacturing_Lot == 'Lot3')

t.test(Lot1_data[['PSI']],  mu=mean(Suspension_Coil_data[['PSI']]))
t.test(Lot2_data[['PSI']], mu=mean(Suspension_Coil_data[['PSI']]))
t.test(Lot3_data[['PSI']], mu=mean(Suspension_Coil_data[['PSI']]))

