nsf <- read.csv('nsf_gfrp.csv')
cpus <- read.csv('cpu-prices.csv')
cpus$per_core <- cpus$price_nominal_USD / cpus$cores

cores.lo <- loess(per_core ~ year, cpus)
gradstudent.lo <- loess(fellowship ~ year, nsf)

data <- data.frame(year=seq(1972,2015))
data$gradstudent <- predict(gradstudent.lo, data)
data$per_core <- predict(cores.lo, data)

data$cores_per_gradstudent <- data$gradstudent / data$per_core

library(ggplot2)
ggplot(data, aes(x=year,y=cores_per_gradstudent)) + geom_line() + geom_point() + 
    ylab('Cores per grad-student-year') + xlab('Year') + 
    ggtitle('One year Grad Student Stipend (NSF GFRP) = How Many New Cores')
ggsave('gradstudents-per-cpu.png')