cat("\f") # clean the console
rm(list = ls()) # clean the environment

library(readxl)
library(tidyr)
library(dplyr)
library(caTools)
library("ggpubr")

data <- read_excel("ProjectData.xlsx")

# Friend to Cat Correlations

  res00 <- cor.test(data$FriendC, data$FriendC, 
                 method = "pearson")

  res01 <- cor.test(data$FriendC, data$Trust, 
                method = "pearson")

  res02 <- cor.test(data$FriendC, data$SelfA, 
                method = "pearson")

  res03 <- cor.test(data$FriendC, data$Affec, 
                method = "pearson")

  res04 <- cor.test(data$FriendC, data$Sus, 
                method = "pearson")

  res05 <- cor.test(data$FriendC, data$Anx, 
                method = "pearson")

  res06 <- cor.test(data$FriendC, data$Sol, 
                method = "pearson")
 
   
# Friend to People Correlations
  
  res10 <- cor.test(data$FriendP, data$FriendP, 
                    method = "pearson")
  
  res11 <- cor.test(data$FriendP, data$Trust, 
                    method = "pearson")
  
  res12 <- cor.test(data$FriendP, data$SelfA, 
                    method = "pearson")
  
  res13 <- cor.test(data$FriendP, data$Affec, 
                    method = "pearson")
  
  res14 <- cor.test(data$FriendP, data$Sus, 
                    method = "pearson")
  
  res15 <- cor.test(data$FriendP, data$Anx, 
                    method = "pearson")
  
  res16 <- cor.test(data$FriendP, data$Sol, 
                    method = "pearson")

# Fear Cat Correlations
  
  res20 <- cor.test(data$FearC, data$FearC, 
                    method = "pearson")
  
  res21 <- cor.test(data$FearC, data$Trust, 
                    method = "pearson")
  
  res22 <- cor.test(data$FearC, data$SelfA, 
                    method = "pearson")
  
  res23 <- cor.test(data$FearC, data$Affec, 
                    method = "pearson")
  
  res24 <- cor.test(data$FearC, data$Sus, 
                    method = "pearson")
  
  res25 <- cor.test(data$FearC, data$Anx, 
                    method = "pearson")
  
  res26 <- cor.test(data$FearC, data$Sol, 
                    method = "pearson")

  
# Fear Cat Correlations
  
  res30 <- cor.test(data$FearP, data$FearC, 
                    method = "pearson")
  
  res31 <- cor.test(data$FearP, data$Trust, 
                    method = "pearson")
  
  res32 <- cor.test(data$FearP, data$SelfA, 
                    method = "pearson")
  
  res33 <- cor.test(data$FearP, data$Affec, 
                    method = "pearson")
  
  res34 <- cor.test(data$FearP, data$Sus, 
                    method = "pearson")
  
  res35 <- cor.test(data$FearP, data$Anx, 
                    method = "pearson")
  
  res36 <- cor.test(data$FearP, data$Sol, 
                    method = "pearson")
  
# Aggressive to Cat Correlations
  
  res40 <- cor.test(data$Agg2C, data$Agg2C, 
                    method = "pearson")
  
  res41 <- cor.test(data$Agg2C, data$Trust, 
                    method = "pearson")
  
  res42 <- cor.test(data$Agg2C, data$Predict, 
                    method = "pearson")
  
  res43 <- cor.test(data$Agg2C, data$Sus, 
                    method = "pearson")
  
  res44 <- cor.test(data$Agg2C, data$Erratic, 
                    method = "pearson")
  
  res45 <- cor.test(data$Agg2C, data$Gentle, 
                    method = "pearson")
  
  
# Aggressive to Cat Correlations
  
  res50 <- cor.test(data$Agg2P, data$Agg2P, 
                    method = "pearson")
  
  res51 <- cor.test(data$Agg2P, data$Trust, 
                    method = "pearson")
  
  res52 <- cor.test(data$Agg2P, data$Predict, 
                    method = "pearson")
  
  res53 <- cor.test(data$Agg2P, data$Sus, 
                    method = "pearson")
  
  res54 <- cor.test(data$Agg2P, data$Erratic, 
                    method = "pearson")
  
  res55 <- cor.test(data$Agg2P, data$Gentle, 
                    method = "pearson")