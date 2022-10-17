#Calculate variance using log 
mat=readRDS('logcpm.rds')
variance = apply(logcpm, 1, var)
variance = sort(variance,decreasing = T)
top50 = variance[1:50]
pmat = z_score[names(top50),]

#Create a heatmap
library(ComplexHeatmap)
Heatmap(pmat)
Heatmap(pmat,c('orange','white','purple'))